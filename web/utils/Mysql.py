import pymysql
from web.utils.config import *


class Operation:
    def __init__(self):
        try:
            self.db = pymysql.connect(host=host, port=3306, user=userName, password=password, database=dbName)
        except Exception as e:
            print('连接数据库出错')
            print(e)

    def select_data(self, *args):
        if len(args) == 1:
            sql = 'select * from %s ' % args[0]
        elif len(args) == 2:
            sql = 'select * from %s where region = "%s"' % (args[0], args[1])
        return self.select(sql)

    def select(self, sql):
        cursor = self.db.cursor()
        cursor.execute(sql)
        result = cursor.fetchall()
        self.db.commit()
        desp_list = [i[0] for i in cursor.description]  # 获取字段列表
        data = []
        for i in result:
            data.append(dict(zip(desp_list, i)))
        return data

    def insert_data(self, data, table_name):
        cursor = self.db.cursor()
        key_list = []
        value_list = []
        for item in data:
            if item == 'year' or item == 'title':
                continue
            key_list.append(item)
            value_list.append("'" + self.db.escape_string(str(data[item])) + "'")
        key = ','.join(key_list)
        value = ','.join(value_list)
        sql = 'insert into %s (%s) values (%s)' % (table_name, key, value)
        try:
            cursor.execute(sql)
            self.db.commit()
            print("成功插入")
        except Exception as e:
            print(e)
            return -1

    def delete_data(self, t_id, table_name):
        assert type(t_id) is int
        cursor = self.db.cursor()
        sql = 'delete from %s where id=%s' % (table_name, t_id)
        try:
            cursor.execute(sql)
            self.db.commit()
            print("成功删除")
        except Exception as e:
            print(e)
            return -1

    def update_data(self, data, table_name):
        cursor = self.db.cursor()
        key_list = []
        value_list = []
        for item in data:
            if item == 'year' or item == 'title' or item == 'region':
                continue
            value_list.append(item + " = '" + self.db.escape_string(str(data[item])) + "'")
        value = ','.join(value_list)
        sql = 'update %s set %s where region = "%s"' % (table_name, value, data['region'])
        try:
            cursor.execute(sql)
            self.db.commit()
            print("成功更新")
        except Exception as e:
            print(e)
            return -1

    def mysql_real_escape_string(self, sql):
        str = '\\"'
        sql = sql.replace('"', str)
        return sql

    def __del__(self):
        self.db.close()


if __name__ == '__main__':
    operation = Operation()
    item = {'adult_central': 100,
            'adult_total': 100,
            'degree': 230,
            'government': 420,
            'higher': 27,
            'region': '甘肃',
            'regular_central': 2,
            'regular_total': 49,
            'title': 'school',
            'year': '2019'}
    table_name = item['year'] + item['title']
    data = operation.select_data('2019school', '背景')
    if data:
        print(data)
