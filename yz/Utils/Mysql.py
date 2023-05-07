import pymysql
from Utils.config import *


class Operation:
    def __init__(self):
        try:
            self.db = pymysql.connect(host=host, port=3306, user=userName, password=password, database=dbName)
        except Exception as e:
            print('连接数据库出错')
            print(e)

    def select_data(self, *args):
        sql = ''
        if len(args) == 1:
            sql = 'select * from %s ' % args[0]
        elif len(args) == 3:
            sql = 'SELECT * FROM `%s` WHERE region = "%s" and year = "%s"' % (
                args[0], args[1], args[2])
        elif len(args) == 4:
            sql = 'SELECT * FROM `%s` WHERE name = "%s" and year = "%s" and title = "%s"' % (
                args[0], args[1], args[2], args[3])
        elif len(args) == 5:
            sql = 'SELECT * FROM `%s` WHERE year = %s and name = "%s" and score_a = %s and score_b = %s' % (
                args[0], args[1], args[2], args[3], args[4])
        elif len(args) == 6:
            sql = 'SELECT * FROM `%s` WHERE name = "%s" and region = "%s" and subordinate = "%s" and graduate = "%s" and zhx = "%s"' % (
                args[0], args[1], args[2], args[3], args[4], args[5])
        elif len(args) == 9:
            sql = 'SELECT * FROM `%s` WHERE name = "%s" and discipline = "%s" and type = "%s" and code = "%s"  and school = "%s" and title = "%s" and text = "%s" and school_is = "%s"' % (
                args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8])
        return self.select(sql)

    def select(self, sql):
        cursor = self.db.cursor()
        try:
            # sql = self.db.escape_string(sql)
            # print(sql)
            cursor.execute(sql)
            result = cursor.fetchall()
            self.db.commit()
        except Exception as e:
            print(sql, "查询出错", e)
            return -1
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
            print(sql, "插入出错", e)
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

    def update_data(self, data, table_name, up_list):
        cursor = self.db.cursor()
        key_list = []
        value_list = []
        for item in data:
            if item in up_list:
                continue
            value_list.append(item + " = '" + self.db.escape_string(str(data[item])) + "'")
        value = ','.join(value_list)
        for item in up_list:
            key_list.append(item + " = '" + str(data[item]) + "'")
        key = ' and '.join(key_list)
        sql = 'update %s set %s where %s' % (table_name, value, key)
        try:
            cursor.execute(sql)
            self.db.commit()
            print("成功更新")
        except Exception as e:
            print(sql, "更新出错", e)
            return -1

    def mysql_real_escape_string(self, sql):
        str = '\\"'
        sql = sql.replace('"', str)
        return sql

    def __del__(self):
        self.db.close()


if __name__ == '__main__':
    operation = Operation()
