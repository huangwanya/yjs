import re

import scrapy
import js2xml
from lxml import etree
from scrapy.selector import Selector
from yz.items import YzItem


class SelfSpider(scrapy.Spider):
    name = 'self'
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
        table_list = selector.xpath('//program/var[@name="xkfsList"]/array/object/property/array/object')
        for table in table_list:
            item = YzItem()
            item['name'] = table.xpath('.//property[@name="yxmc"]/string/text()').extract_first()
            page = table.xpath('.//property[@name="xkList"]/array/object[1]/property[2]/string/text()').extract_first()
            # text = table.xpath('.//property[@name="xkList"]/array/object/property[1]/string/text()').extract()
            page = response.urljoin(page)
            yield scrapy.Request(page,
                                 callback=self.page_parse,
                                 meta={'item': item})

    def page_parse(self, response):
        item = response.meta['item']
        # print(item['name'])
        title_list = response.xpath('/html/body/div[1]/div[2]/div[4]/div[1]/p[position()>2]/strong')
        table_list = response.xpath('/html/body/div[1]/div[2]/div[4]/div[1]/table[position()>2]')
        for title, table in zip(title_list, table_list):
            title = title.xpath('./text()').extract_first()
            # print(title)
            item['title'] = title
            tr = table.xpath('./tbody/tr[position()>1]')
            for td in tr:
                shuju = td.xpath('./td/text()').extract()
                # print(shuju)
                item['score'] = shuju[1].strip()
                item['year'] = shuju[0].strip()
                if item['year'] == '2018年' or item['year'] == '2019年' or item['year'] == '2020年' or item[
                    'year'] == '2021年' or item['year'] == '2022年':
                    print(item['year'])
                    if self.judgeInt(item['score']) and self.judegeOfInt(item['year']):
                        str_list = ''.join(item['score'])  # 把列表中的元素连起来
                        item['score'] = int(str_list)
                    else:
                        item['score'] = 0
                    yield item

    def judgeInt(self, str):
        pattern = re.compile(r'^[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?$')
        return pattern.match(str)

    def judegeOfInt(self, str):
        return bool(re.search(r'\d', str))
