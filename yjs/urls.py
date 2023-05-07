"""yjs URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
import os
from yjs import settings
from django.urls import path, include
from web import views

urlpatterns = [
    path('', views.home),
    path('login/', views.login, name='login'),
    path('logon/', views.logon, name='logon'),
    path('logout/', views.logout, name='logout'),
    path('zsrs/', views.zsrs, name='zsrs'),
    path('fsx/', views.fsx, name='fsx'),
    path('blb/', views.blb, name='blb'),
    path('nvsrsb/', views.nvsrsb, name='nvsrsb'),
    path('xxlx/', views.xxlx, name='xxlx'),
    path('zsqk/', views.zsqk, name='zsqk'),
    path('xueshuo/', views.xueshuo, name='xueshuo'),
    path('xueshuoD/', views.xueshuoD, name='xueshuoD'),
    path('zhuanshuo/', views.zhuanshuo, name='zhuanshuo'),
    path('zhuanshuoD/', views.zhuanshuoD, name='zhuanshuoD'),
    path('xuexiao/', views.xuexiao, name='xuexiao'),
    path('xuexiaoD/', views.xuexiaoD, name='xuexiaoD'),
    path('zhuanyeD/', views.zhuanyeD, name='zhuanyeD'),
    path('guanwang/', views.guanwang, name='guanwang'),
    path('guanwangD/', views.guanwangD, name='guanwangD'),
    path('zhuanye/', views.zhuanye, name='zhuanye'),
    path('zhuanyexueshuo/', views.zhuanyexueshuo, name='zhuanyexuesho'),
    path('zhuanyeAT/', views.zhuanyeAT, name='zhuanyeAT'),
    path('zhuanyezhuanshuo/', views.zhuanyezhuanshuo, name='zhuanyezhuanshuo'),
    path('zhuanyePT/', views.zhuanyePT, name='zhuanyePT'),
    path('yuanxiao/', views.yuanxiao, name='yuanxiao'),
    path('yuanxiaoD/', views.yuanxiaoD, name='yuanxiaoD'),
    path('tuijian/', views.tuijian, name='tuijian'),
    path('tuijianZ/', views.tuijian_zhuanye, name='tuijian_zhuanye'),
    path('admin/xueshuo/', views.admin_xueshuo, name='admin_xueshuo'),
    path('admin/zhuanshuo/', views.admin_zhuanshuo, name='admin_zhuanshuo'),
    path('admin/xuexiaoZHX/', views.admin_xuexiao_zhx, name='admin_xuexiao_zhx'),
    path('admin/school/', views.admin_school, name='admin_school'),
    path('admin/zhuanyeXueshuo/', views.admin_zhuanye_xueshuo, name='admin_zhuanye_xueshuo'),
    path('admin/zhuanyeZhuanshuo/', views.admin_zhuanye_zhuanshuo, name='admin_zhuanye_zhuanshuo'),
    path('admin/yuanxiao/', views.admin_yuanxiao, name='admin_yuanxiao'),
    path('admin/student/', views.admin_student, name='admin_student'),
    path('admin/update/', views.admin_update, name='admin_update'),
    path('admin/delete/', views.admin_delete, name='admin_delete'),
    path('admin/create/', views.admin_create, name='admin_create'),
    path('admin/scrapy/', views.admin_scrapy, name='admin_scrapy'),
    path('admin/upload/', views.admin_upload, name='admin_upload'),
]
