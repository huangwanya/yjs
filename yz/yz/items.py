# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class YzItem(scrapy.Item):
    # define the fields for your item here like:
    name = scrapy.Field()
    title = scrapy.Field()
    year = scrapy.Field()
    score = scrapy.Field()


class NationItem(scrapy.Item):
    # define the fields for your item here like:
    name = scrapy.Field()
    year = scrapy.Field()
    score_a = scrapy.Field()
    score_b = scrapy.Field()


class School(scrapy.Item):
    # define the fields for your item here like:
    name = scrapy.Field()
    region = scrapy.Field()
    subordinate = scrapy.Field()
    graduate = scrapy.Field()
    zhx = scrapy.Field()
    img = scrapy.Field()


class Major(scrapy.Item):
    # define the fields for your item here like:
    name = scrapy.Field()
    discipline = scrapy.Field()
    type = scrapy.Field()
    code = scrapy.Field()
    school = scrapy.Field()
    title = scrapy.Field()
    text = scrapy.Field()
    school_is = scrapy.Field()


class DatabasesspiderItem(scrapy.Item):
    # define the fields for your item here like:
    year = scrapy.Field()


class SchoolspiderItem(DatabasesspiderItem):
    region = scrapy.Field()
    regular_total = scrapy.Field()
    regular_central = scrapy.Field()
    degree = scrapy.Field()
    higher = scrapy.Field()
    adult_total = scrapy.Field()
    adult_central = scrapy.Field()
    government = scrapy.Field()


class StudentspiderItem(DatabasesspiderItem):
    region = scrapy.Field()
    graduates_total = scrapy.Field()
    graduates_female = scrapy.Field()
    graduates_doctor = scrapy.Field()
    graduates_master = scrapy.Field()
    degree_awarded = scrapy.Field()
    entrants_total = scrapy.Field()
    entrants_female = scrapy.Field()
    entrants_doctor = scrapy.Field()
    entrants_master = scrapy.Field()
    enrolment_total = scrapy.Field()
    enrolment_female = scrapy.Field()
    enrolment_doctor = scrapy.Field()
    enrolment_master = scrapy.Field()
    nextYear_total = scrapy.Field()
    nextYear_female = scrapy.Field()
    nextYear_doctor = scrapy.Field()
    nextYear_master = scrapy.Field()
