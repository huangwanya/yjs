import re

import scrapy
from yz.items import StudentspiderItem
from yz.items import SchoolspiderItem


class DiquStudentSpider(scrapy.Spider):
    name = 'diqu_student'
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
            # print(year_href)
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

        yield scrapy.Request(url=student_href,
                             callback=self.student_parse,
                             meta={"student_item": student_item})

    def student_parse(self, response):
        item = response.meta['student_item']
        context_list = response.xpath(
            '//*[@id="table-statistics"]/tbody/tr/td[2]/div/div/table/tbody/tr[position()>4] | //*[@id="table-statistics"]/tbody/tr/td[2]/div/table/tbody/tr[position()>5]')
        for context in context_list:
            item['region'] = context.xpath(
                './td[1]/p/span[1]/text() | ./td[1]/font[1]/text()').extract_first()
            item['graduates_total'] = context.xpath('./td[2]/p/span[1]/text() | ./td[2]/text()').extract()
            item['graduates_female'] = context.xpath('./td[3]/p/span[1]/text() | ./td[3]/text()').extract()
            item['graduates_doctor'] = context.xpath('./td[4]/p/span[1]/text() | ./td[4]/text()').extract()
            item['graduates_master'] = context.xpath('./td[5]/p/span[1]/text() | ./td[5]/text()').extract()
            item['degree_awarded'] = context.xpath('./td[6]/p/span[1]/text() | ./td[6]/text()').extract()
            item['entrants_total'] = context.xpath('./td[7]/p/span[1]/text() | ./td[7]/text()').extract()
            item['entrants_female'] = context.xpath('./td[8]/p/span[1]/text() | ./td[8]/text()').extract()
            item['entrants_doctor'] = context.xpath('./td[9]/p/span[1]/text() | ./td[9]/text()').extract()
            item['entrants_master'] = context.xpath('./td[10]/p/span[1]/text() | ./td[10]/text()').extract()
            item['enrolment_total'] = context.xpath('./td[11]/p/span[1]/text() | ./td[11]/text()').extract()
            item['enrolment_female'] = context.xpath('./td[12]/p/span[1]/text() | ./td[12]/text()').extract()
            item['enrolment_doctor'] = context.xpath('./td[13]/p/span[1]/text() | ./td[13]/text()').extract()
            item['enrolment_master'] = context.xpath('./td[14]/p/span[1]/text() | ./td[14]/text()').extract()
            item['nextYear_total'] = context.xpath('./td[15]/p/span[1]/text() | ./td[15]/text()').extract()
            item['nextYear_female'] = context.xpath('./td[16]/p/span[1]/text() | ./td[16]/text()').extract()
            item['nextYear_doctor'] = context.xpath('./td[17]/p/span[1]/text() | ./td[17]/text()').extract()
            item['nextYear_master'] = context.xpath('./td[18]/p/span[1]/text() | ./td[18]/text()').extract()

            if item['year'] == '2015':
                item['region'] = context.xpath('./td[1]/text()').extract_first()
                item['region'] = re.findall(r"[^a-zA-Z0-9]", item['region'])
                item['region'] = "".join(item['region'])
            else:
                item['region'] = "".join(str(item['region']).split('\u3000'))
            item['graduates_total'] = self.str_num(item['graduates_total'])
            item['graduates_female'] = self.str_num(item['graduates_female'])
            item['graduates_doctor'] = self.str_num(item['graduates_doctor'])
            item['graduates_master'] = self.str_num(item['graduates_master'])
            item['degree_awarded'] = self.str_num(item['degree_awarded'])
            item['entrants_total'] = self.str_num(item['entrants_total'])
            item['entrants_female'] = self.str_num(item['entrants_female'])
            item['entrants_doctor'] = self.str_num(item['entrants_doctor'])
            item['entrants_master'] = self.str_num(item['entrants_master'])
            item['enrolment_total'] = self.str_num(item['enrolment_total'])
            item['enrolment_female'] = self.str_num(item['enrolment_female'])
            item['enrolment_doctor'] = self.str_num(item['enrolment_doctor'])
            item['enrolment_master'] = self.str_num(item['enrolment_master'])
            item['nextYear_total'] = self.str_num(item['nextYear_total'])
            item['nextYear_female'] = self.str_num(item['nextYear_female'])
            item['nextYear_doctor'] = self.str_num(item['nextYear_doctor'])
            item['nextYear_master'] = self.str_num(item['nextYear_master'])

            # print(item)
            if item['region'] == 'None' or item['region'] == '总计' or item['region'] == '计' or item['region'] == '' or \
                    item['region'] == '　' or item['region'] == '合计':
                continue
            yield item

    def str_num(self, context_list):
        name_score_list_string = ",".join(context_list)

        score_list = re.findall(r"\d+", name_score_list_string)

        score_list_int = list(map(int, score_list))
        if not score_list_int:
            return 0
        else:
            return score_list_int[0]
