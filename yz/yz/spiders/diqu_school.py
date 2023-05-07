import re

import scrapy
from yz.items import StudentspiderItem
from yz.items import SchoolspiderItem


class DiquSchoolSpider(scrapy.Spider):
    name = 'diqu_school'
    allowed_domains = ['www.moe.gov.cn']
    start_urls = ['http://www.moe.gov.cn/jyb_sjzl/moe_560/2020/']

    def parse(self, response):
        year_list = response.xpath('/html/body/div[1]/div/div[5]/div[1]/ul/li')
        for table in year_list:
            school_item = SchoolspiderItem()
            student_item = StudentspiderItem()
            year_href = table.xpath('./a/@href').extract_first()
            school_item['year'] = table.xpath('./a/text()').extract_first()
            year_href = response.urljoin(year_href)
            school_item['year'] = school_item['year'].split('年')[0]
            student_item['year'] = school_item['year']
            if int(school_item['year']) <= 2013 or int(school_item['year']) == 2021:
                # if int(school_item['year']) != 2014:
                continue
            yield scrapy.Request(url=year_href,
                                 callback=self.gedi_parse,
                                 meta={"school_item": school_item, "student_item": student_item})

    def gedi_parse(self, response):
        add_href = response.xpath('//*[@id="list"]/li[2]/a/@href').extract_first()
        add_href = response.urljoin(add_href)
        school_item = response.meta['school_item']
        student_item = response.meta['student_item']
        # print(add_href)
        yield scrapy.Request(url=add_href,
                             callback=self.item_parse,
                             meta={"school_item": school_item, "student_item": student_item})

    def item_parse(self, response):
        school_item = response.meta['school_item']
        student_item = response.meta['student_item']
        school = response.xpath('//*[@id="list"]/li[1]/a/@href').extract_first()
        student = response.xpath('//*[@id="list"]/li[2]/a/@href').extract_first()

        school_href = response.urljoin(school)
        student_href = response.urljoin(student)

        # print(student_href)
        yield scrapy.Request(url=school_href,
                             callback=self.school_parse,
                             meta={"school_item": school_item})

    def school_parse(self, response):
        item = response.meta['school_item']
        # print(response.text)
        context_list = response.xpath(
            '//*[@id="table-statistics"]/tbody/tr/td[2]/div/div/table/tbody/tr[position()>3]')
        for context in context_list:
            item['region'] = context.xpath(
                './td[1]/p/span[1]/text() |./td[1]/font[1]/text()').extract_first()
            item['regular_total'] = context.xpath(
                './td[2]/p/span//text() | ./td[2]//text() ').extract()
            item['regular_central'] = context.xpath(
                './td[3]/p/span//text() | ./td[3]//text() ').extract()
            item['degree'] = context.xpath(
                './td[4]/p/span[1]/text() | ./td[4]//text() ').extract()
            item['higher'] = context.xpath(
                './td[5]/p/span[1]/text() | ./td[5]//text() ').extract()
            item['adult_total'] = context.xpath(
                './td[6]/p/span[1]/text() | ./td[6]//text() ').extract()
            item['adult_central'] = context.xpath(
                './td[7]/p/span[1]/text() | ./td[7]//text() ').extract()
            item['government'] = context.xpath(
                './td[8]/p/span[1]/text() | ./td[8]//text() ').extract()

            item['region'] = "".join(str(item['region']).split('\u3000'))
            item['regular_total'] = self.str_num(item['regular_total'])
            item['regular_central'] = self.str_num(item['regular_central'])
            item['degree'] = self.str_num(item['degree'])
            item['higher'] = self.str_num(item['higher'])
            item['adult_total'] = self.str_num(item['adult_total'])
            item['adult_central'] = self.str_num(item['adult_central'])
            item['government'] = self.str_num(item['government'])
            if item['region'] == 'None' or item['region'] == '总计' or item['region'] == '计' or item['region'] == '' or \
                    item['region'] == '　' or item['region'] == '合计':
                continue
            yield item
            # print(item)

    def str_num(self, context_list):
        name_score_list_string = ",".join(context_list)

        score_list = re.findall(r"\d+", name_score_list_string)

        score_list_int = list(map(int, score_list))
        if not score_list_int:
            return 0
        else:
            return score_list_int[0]
