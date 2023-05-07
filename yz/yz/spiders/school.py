import re

import requests
import scrapy
from yz.items import School


class SchoolSpider(scrapy.Spider):
    name = 'school'
    allowed_domains = ['yz.chsi.com.cn']
    start_urls = ['https://yz.chsi.com.cn/sch/']
    page_num = 0

    def parse(self, response):
        school_list = response.xpath('/html/body/div[1]/div[4]/div[2]/div')
        next_page = []
        for i in range(0, 861, 20):
            next_page.append('https://yz.chsi.com.cn/sch/?start=' + str(i))
        # print(len(next_page))
        # print(next_page[self.page_num])
        for school in school_list:
            item = School()
            img = school.xpath('./img/@src').extract_first()
            file_name = img.split('/')[-1]
            file_name_path = "D:/lvhaixin/源代码/yjs/web/static/school/" + file_name
            file = requests.get(img)
            with open(file_name_path, 'wb') as f:
                f.write(file.content)
            item['img'] = file_name
            item['name'] = school.xpath('./div/div[1]/a/text()').extract_first()
            data_list = school.xpath('./div/div[2]//text()').extract()
            item['region'] = data_list[2]
            item['subordinate'] = data_list[3]
            if len(data_list) >= 5:
                item['graduate'] = data_list[4]
                item['graduate'] = item['graduate'].strip()
            else:
                item['graduate'] = 'False'
            if len(data_list) >= 6:
                item['zhx'] = data_list[5]
                item['zhx'] = item['zhx'].strip()
            else:
                item['zhx'] = 'False'

            item['name'] = item['name'].strip()
            item['region'] = item['region'].strip()
            item['subordinate'] = item['subordinate'].strip()
            yield item
        if self.page_num < 43:
            self.page_num = self.page_num + 1
        yield scrapy.Request(next_page[self.page_num],
                             callback=self.parse)
