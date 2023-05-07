import copy

import scrapy
from yz.items import Major
import urllib


class MajorAcademicSpider(scrapy.Spider):
    name = 'major_academic'
    allowed_domains = ['yz.chsi.com.cn']
    start_urls = ['https://yz.chsi.com.cn/zyk/specialityCategory.do?method=subCategoryMl&key=10']

    def parse(self, response):
        major_list = response.xpath('//li')
        for m in major_list:
            item = Major()
            id = m.xpath('./@id').extract_first()
            item['discipline'] = m.xpath('.//text()').extract_first()
            page = 'https://yz.chsi.com.cn/zyk/specialityCategory.do?method=subCategoryMl&key=' + id
            yield scrapy.Request(page,
                                 callback=self.type_parse,
                                 meta={'item': copy.deepcopy(item)})

    def type_parse(self, response):
        major_list = response.xpath('//li')
        for m in major_list:
            item = response.meta['item']
            id = m.xpath('./@id').extract_first()
            l = m.xpath('.//text()').extract_first()
            if l == '\ue6a2':
                continue
            item['type'] = l
            page = 'https://yz.chsi.com.cn/zyk/specialityCategory.do?method=subCategoryXk&key=' + id
            yield scrapy.Request(page,
                                 callback=self.page_parse,
                                 meta={'item': copy.deepcopy(item)})

    def page_parse(self, response):
        page_list = response.xpath('//table/tr[position()>1]')
        for page in page_list:
            item = response.meta['item']
            name = page.xpath('./td[1]/a/text()').extract_first()
            code = page.xpath('./td[2]/text()').extract_first()
            yemian = page.xpath('./td[4]/a/@href').extract_first()
            yemian = urllib.parse.unquote(yemian)
            item['name'] = name.strip()
            item['code'] = code.strip()
            # item['school'] = response.urljoin(school)
            yemian = response.urljoin(yemian)
            # item['page'] = urllib.parse.unquote(item['page'])
            # item['school'] = urllib.parse.unquote(item['school'])
            # print(item)
            yield scrapy.Request(yemian,
                                 callback=self.school_parse,
                                 meta={'item': copy.deepcopy(item)})

    def school_parse(self, response):
        school_list = response.xpath('/html/body/div[1]/div[3]/div[1]/div[3]/div[2]/div/ul/li')
        for school in school_list:
            url = school.xpath('./a/@href').extract_first()

            # print(item['type'])
            # print(url)
            # print(item['school'])
            if url is not None:
                item = response.meta['item']
                item['school'] = school.xpath('./@title').extract_first()
                item['school_is'] = response.urljoin(url)
                yield scrapy.Request(item['school_is'],
                                     callback=self.title_parse,
                                     meta={'item': copy.deepcopy(item)})

    def title_parse(self, response):
        item = response.meta['item']
        item['title'] = response.xpath('/html/body/div[1]/div[3]/table/tr[1]/td[2]/text()').extract_first()
        item['text'] = response.xpath('/html/body/div[1]/div[3]/table/tr[2]/td[2]//text()').extract()
        item['title'] = item['title'].strip()
        item['text'] = "".join(item['text'])
        item['text'] = item['text'].strip()
        # print(item['title'], item['school'], item['school_is'],"dadaasda")
        # for t in item['text']:
        #     print(t)
        # print(item)
        yield item