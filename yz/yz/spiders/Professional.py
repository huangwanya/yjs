import scrapy
import js2xml
from lxml import etree
from scrapy.selector import Selector
from yz.items import NationItem


class ProfessionalSpider(scrapy.Spider):
    name = 'Professional'
    allowed_domains = ['yz.chsi.com.cn']
    start_urls = ['https://yz.chsi.com.cn/kyzx/zt/lnfsx2022.shtml']

    def parse(self, response):
        json_str = response.xpath('/html/body/script[6]/text()').extract_first()
        src_text = js2xml.parse(json_str, encoding='utf-8', debug=False)
        src_tree = js2xml.pretty_print(src_text)
        etree.HTML(src_tree)

        selector = Selector(text=src_tree)
        text = selector.response.text
        with open('test.html', 'w', encoding='utf8') as file:
            file.write(text)

        table_list = selector.xpath('//program/var[@name="zyssList"]/array/object')
        for table in table_list:

            name = table.xpath('.//property[@name="name"]/string/text()').extract_first()
            score_a = table.xpath('.//property[@name="gjx"]/object/property[1]/array/number/@value').extract()
            score_b = table.xpath('.//property[@name="gjx"]/object/property[2]/array/number/@value').extract()
            year = 2018
            for a, b in zip(score_a, score_b):
                item = NationItem()
                item['name'] = name
                item['score_a'] = int(a)
                item['score_b'] = int(b)
                item['year'] = year
                year = year + 1
                # print(item)
                yield item