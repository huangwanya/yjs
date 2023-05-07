# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from Utils.Mysql import Operation


class YzPipeline:
    def open_spider(self, spider):
        self.operation = Operation()

    def process_item(self, item, spider):
        if spider.name == 'major_academic':
            self.exit_major_a(item)
        elif spider.name == 'self':
            self.exit(item)
        elif spider.name == 'Academic':
            self.exit_academic(item)
        elif spider.name == 'Professional':
            self.exit_Professional(item)
        elif spider.name == 'school':
            self.exit_School(item)
        elif spider.name == 'major_professional':
            self.exit_major_p(item)
        elif spider.name == 'diqu_school':
            self.exit_diqu_school(item)
        elif spider.name == 'diqu_student':
            self.exit_diqu_student(item)
        return item

    def exit(self, item):
        if self.operation.select_data('zhx_school', item['name'], item['year'], item['title']):
            self.operation.update_data(item, 'zhx_school', ['name', 'title', 'year'])
        else:
            self.operation.insert_data(item, 'zhx_school')

    def exit_academic(self, item):
        if self.operation.select_data('academic', item['year'], item['name'], item['score_a'], item['score_b']):
            self.operation.update_data(item, 'academic', ['name', 'year'])
        else:
            self.operation.insert_data(item, 'academic')

    def exit_Professional(self, item):
        if self.operation.select_data('professional', item['year'], item['name'], item['score_a'], item['score_b']):
            self.operation.update_data(item, 'professional', ['name', 'year'])
        else:
            self.operation.insert_data(item, 'professional')

    def exit_School(self, item):
        if self.operation.select_data('school_list', item['name'], item['region'], item['subordinate'],
                                      item['graduate'], item['zhx']):
            self.operation.update_data(item, 'school_list', ['name', 'region'])
        else:
            self.operation.insert_data(item, 'school_list')

    def exit_major_a(self, item):
        if self.operation.select_data('major_academic', item['name'], item['discipline'], item['type'], item['code'],
                                      item['school'], item['title'], item['text'], item['school_is']):
            self.operation.update_data(item, 'major_academic', ['name', 'discipline', 'type'])
        else:
            self.operation.insert_data(item, 'major_academic')

    def exit_major_p(self, item):
        if self.operation.select_data('major_professional', item['name'], item['discipline'], item['type'],
                                      item['code'],
                                      item['school'], item['title'], item['text'], item['school_is']):
            self.operation.update_data(item, 'major_professional', ['name', 'discipline', 'type'])
        else:
            self.operation.insert_data(item, 'major_professional')

    def exit_diqu_school(self, item):
        if self.operation.select_data('diqu_school', item['region'], item['year']):
            self.operation.update_data(item, 'diqu_school', ['region', 'year'])
        else:
            self.operation.insert_data(item, 'diqu_school')

    def exit_diqu_student(self, item):
        if self.operation.select_data('diqu_student', item['region'], item['year']):
            self.operation.update_data(item, 'diqu_student', ['region', 'year'])
        else:
            self.operation.insert_data(item, 'diqu_student')
