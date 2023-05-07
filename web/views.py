import time

from django.shortcuts import render, redirect
from web import models
import json
# Create your views here.
from django.shortcuts import render, HttpResponse
from django.views.decorators.csrf import csrf_exempt


def home(request):
    if not request.session.get('user'):
        return redirect('/login/')
    else:
        session = request.session.get('user')
        if session['role'] == 'user':
            return render(request, 'index.html')
        else:
            return render(request, 'admin.html')


def login(request):
    return render(request, 'login.html')


def logon(request):
    if request.method == 'POST':
        # 将用户POST提交数据与表单结合，准备验证
        form = request.POST
        username = form.get('loginUsername')
        password = form.get('loginPassword')
        info = models.User.objects.get(username=username)
        if password == info.password:
            request.session['user'] = {'username': username, 'password': password, 'role': info.role}
        return HttpResponse("200")


def logout(request):
    request.session.clear()
    return redirect('/login/')


def year_list():
    data = {
        '2014': '2014年',
        '2015': '2015年',
        '2016': '2016年',
        '2017': '2017年',
        '2018': '2018年',
        '2019': '2019年',
        '2020': '2020年',
    }
    return data


def zsrs(request):
    data = request.GET
    region = models.DiquStudent.objects.filter(year=data['year']).values('region')
    entrants_total = models.DiquStudent.objects.filter(year=data['year']).values('entrants_total')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in entrants_total:
        values.append(item['entrants_total'])
    entrants_total = values
    year = year_list()
    return render(request, 'diqu/zhaoshengrenshu.html',
                  {'region': region, 'entrants_total': entrants_total, 'year': year})


def fsx(request):
    data = request.GET
    region = models.DiquStudent.objects.filter(year=data['year']).values('region')
    graduates_total = models.DiquStudent.objects.filter(year=data['year']).values('graduates_total')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in graduates_total:
        values.append(item['graduates_total'])
    graduates_total = values
    year = year_list()
    return render(request, 'diqu/fenshuxian.html', {'region': region, 'graduates_total': graduates_total, 'year': year})


def blb(request):
    data = request.GET
    region = models.DiquStudent.objects.filter(year=data['year']).values('region')
    entrants_master = models.DiquStudent.objects.filter(year=data['year']).values('entrants_master')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in entrants_master:
        values.append(item['entrants_master'])
    entrants_master = values
    year = year_list()
    return render(request, 'diqu/baolubi.html', {'region': region, 'entrants_master': entrants_master, 'year': year})


def nvsrsb(request):
    data = request.GET
    region = models.DiquStudent.objects.filter(year=data['year']).values('region')
    entrants_total = models.DiquStudent.objects.filter(year=data['year']).values('entrants_total')
    entrants_female = models.DiquStudent.objects.filter(year=data['year']).values('entrants_female')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in entrants_total:
        values.append(item['entrants_total'])
    entrants_total = values
    values = []
    for item in entrants_female:
        values.append(item['entrants_female'])
    entrants_female = values
    values = []
    for i in range(len(entrants_total)):
        values.append(entrants_total[i] - entrants_female[i])
    entrants_man = values
    year = year_list()
    return render(request, 'diqu/nannvshengrenshubi.html',
                  {'region': region, 'entrants_female': entrants_female, 'entrants_man': entrants_man, 'year': year})


def xxlx(request):
    data = request.GET
    region = models.DiquSchool.objects.filter(year=data['year']).values('region')
    regular_total = models.DiquSchool.objects.filter(year=data['year']).values('regular_total')
    adult_total = models.DiquSchool.objects.filter(year=data['year']).values('adult_total')
    government = models.DiquSchool.objects.filter(year=data['year']).values('government')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in regular_total:
        values.append(item['regular_total'])
    regular_total = values
    values = []
    for item in adult_total:
        values.append(item['adult_total'])
    adult_total = values
    values = []
    for item in government:
        values.append(item['government'])
    government = values
    year = year_list()
    return render(request, 'diqu/diqujingjishili.html',
                  {'region': region, 'regular_total': regular_total, 'adult_total': adult_total,
                   'government': government, 'year': year})


def zsqk(request):
    data = request.GET
    region = models.DiquSchool.objects.filter(year=data['year']).values('region')
    regular_total = models.DiquSchool.objects.filter(year=data['year']).values('regular_total')
    adult_total = models.DiquSchool.objects.filter(year=data['year']).values('adult_total')
    government = models.DiquSchool.objects.filter(year=data['year']).values('government')
    values = []
    for item in region:
        values.append(item['region'])
    region = values
    values = []
    for item in regular_total:
        values.append(item['regular_total'])
    regular_total = values
    values = []
    for item in adult_total:
        values.append(item['adult_total'])
    adult_total = values
    values = []
    for item in government:
        values.append(item['government'])
    government = values
    year = year_list()
    return render(request, 'diqu/diquzhaoshengqingkuang.html',
                  {'region': region, 'regular_total': regular_total, 'adult_total': adult_total,
                   'government': government, 'year': year})


def zhuanshuo(request):
    values = models.Professional.objects.values('name').distinct()
    return render(request, 'guojiaxian/zhuanshuo.html', {'values': values})


def xueshuo(request):
    values = models.Academic.objects.values('name').distinct()
    return render(request, 'guojiaxian/xueshuo.html', {'values': values})


def xueshuoD(request):
    if request.method == 'GET':
        data = request.GET
        table = models.Academic.objects.filter(name=data['name']).values()
        dict__ = list(table)
        # table = serializers.serialize('json', table)
        # print(type(table))
        return render(request, 'guojiaxian/xueshuo/table.html', {'table': dict__})


def zhuanshuoD(request):
    if request.method == 'GET':
        data = request.GET
        table = models.Professional.objects.filter(name=data['name']).values()
        dict__ = list(table)
        return render(request, 'guojiaxian/zhuanshuo/table.html', {'table': dict__})


def xuexiao(request):
    values = models.Schoolname.objects.values()
    return render(request, 'zihuaxian/xuexiao.html', {'values': values})


def xuexiaoD(request):
    if request.method == 'GET':
        data = request.GET
        school_data = models.ZhxSchool.objects.filter(name=data['school']).values('title').distinct()
        # table = models.Professional.objects.filter(name=data['school']).values()
        # dict__ = list(school_data)
        return render(request, 'zihuaxian/xuexiao/zhuanye.html', {'values': school_data, 'name': data['school']})


def zhuanyeD(request):
    if request.method == 'GET':
        data = request.GET
        school_data = models.ZhxSchool.objects.filter(name=data['school']).filter(title=data['title']).order_by(
            '-pk').values()
        # table = models.Professional.objects.filter(name=data['school']).values()
        dict__ = list(school_data)
        return render(request, 'zihuaxian/xuexiao/table.html',
                      {'table': dict__, 'school': data['school'], 'title': data['title']})


def guanwang(request):
    values = models.Schoolname.objects.values()
    return render(request, 'guanwang/guanwang.html', {'values': values})


def guanwangD(request):
    if request.method == 'GET':
        school = request.GET['school']
        data = {
            '北京大学': 'https://www.pku.edu.cn/',
            '北京航空航天大学': 'https://www.buaa.edu.cn/',
            '北京理工大学': 'https://bit.edu.cn/',
            '北京师范大学': 'https://www.bnu.edu.cn/',
            '重庆大学': 'https://cqu.edu.cn/',
            '大连理工大学': 'https://www.dlut.edu.cn/',
            '电子科技大学': 'https://www.uestc.edu.cn/',
            '东北大学': 'http://www.neu.edu.cn/',
            '东南大学': 'https://www.seu.edu.cn/',
            '复旦大学': 'https://www.fudan.edu.cn/',
            '哈尔滨工业大学': 'http://www.hit.edu.cn/',
            '湖南大学': 'https://www.hnu.edu.cn/',
            '华南理工大学': 'https://www.scut.edu.cn/new/',
            '华中科技大学': 'https://www.hust.edu.cn/',
            '吉林大学': 'https://www.jlu.edu.cn/',
            '兰州大学': 'https://www.lzu.edu.cn/',
            '南京大学': 'https://www.nju.edu.cn/',
            '南开大学': 'https://www.nankai.edu.cn/main.htm',
            '清华大学': 'https://www.tsinghua.edu.cn/',
            '山东大学': 'https://www.sdu.edu.cn/',
            '上海交通大学': 'https://www.sjtu.edu.cn/',
            '四川大学': 'https://www.scu.edu.cn/',
            '天津大学': 'http://www.tju.edu.cn/index.htm',
            '同济大学': 'https://www.tongji.edu.cn/',
            '厦门大学': 'https://www.xmu.edu.cn/',
            '西安交通大学': 'http://www.xjtu.edu.cn/',
            '西北工业大学': 'https://www.nwpu.edu.cn/',
            '浙江大学': 'https://www.zju.edu.cn/',
            '中国科学技术大学': 'https://www.ustc.edu.cn/',
            '中国农业大学': 'https://www.cau.edu.cn/',
            '中国人民大学': 'https://www.ruc.edu.cn/home1024',
            '中南大学': 'https://www.csu.edu.cn/',
            '中山大学': 'https://www.sysu.edu.cn/',
        }
        name = data[school]
        # return render(request, 'learn.html', {'school': schoolname, 'name': name})
        return redirect(name)


@csrf_exempt
def zhuanye(request):
    if request.method == 'GET':
        data = request.GET
        if data['name'] == 'xueshuo':
            disciplines = models.MajorAcademic.objects.values('discipline').distinct()
            types = models.MajorAcademic.objects.values('type').distinct()
            names = models.MajorAcademic.objects.values('name').distinct()
            return render(request, 'zhuanye/zhuanyexueshuo.html',
                          {'name': 'xueshuo', 'disciplines': disciplines, 'types': types, 'names': names})
        else:
            disciplines = models.MajorProfessional.objects.values('discipline').distinct()
            types = models.MajorProfessional.objects.values('type').distinct()
            names = models.MajorProfessional.objects.values('name').distinct()
            return render(request, 'zhuanye/zhuanyezhuanshuo.html',
                          {'name': 'zhuanshuo', 'disciplines': disciplines, 'types': types, 'names': names})
    else:
        data = request.POST
        if data['name'] == 'xueshuo':
            disciplines = models.MajorAcademic.objects.values('discipline').distinct()
            types = models.MajorAcademic.objects.filter(discipline=data['discipline']).values('type').distinct()
            if data['type'] == "":
                names = models.MajorAcademic.objects.filter(discipline=data['discipline']).values(
                    'name').distinct()
            else:
                names = models.MajorAcademic.objects.filter(discipline=data['discipline']).filter(
                    type=data['type']).values(
                    'name').distinct()
            result = {"disciplines": [], "types": [], "names": []}

            result["disciplines"] = list(disciplines)
            result["types"] = list(types)
            result["names"] = list(names)
            return HttpResponse(json.dumps(result), content_type="application/json")
        else:
            disciplines = models.MajorProfessional.objects.values('discipline').distinct()
            types = models.MajorProfessional.objects.filter(discipline=data['discipline']).values('type').distinct()
            if data['type'] == "":
                names = models.MajorProfessional.objects.filter(discipline=data['discipline']).values(
                    'name').distinct()
            else:
                names = models.MajorProfessional.objects.filter(discipline=data['discipline']).filter(
                    type=data['type']).values(
                    'name').distinct()
            result = {"disciplines": [], "types": [], "names": []}

            result["disciplines"] = list(disciplines)
            result["types"] = list(types)
            result["names"] = list(names)
            return HttpResponse(json.dumps(result), content_type="application/json")


def zhuanyexueshuo(request):
    if request.method == 'POST':
        data = request.POST
        xueshuo_data = models.MajorAcademic.objects.filter(discipline=data['discipline']).filter(
            type=data['type']).filter(name=data['name']).values()
        # table = models.Professional.objects.filter(name=data['school']).values()
        dict__ = list(xueshuo_data)
        disciplines = models.MajorAcademic.objects.values('discipline').distinct()
        types = models.MajorAcademic.objects.values('type').distinct()
        names = models.MajorAcademic.objects.values('name').distinct()
        return render(request, 'zhuanye/xueshuo/table.html',
                      {'table': dict__, 'disciplines': disciplines, 'types': types, 'names': names})


def zhuanyeAT(request):
    if request.method == 'GET':
        data = request.GET
        xueshuo_data = models.MajorAcademic.objects.filter(discipline=data['discipline']).filter(
            type=data['type']).filter(name=data['name']).filter(school=data['school'].strip()).values('text')
        # table = models.Professional.objects.filter(name=data['school']).values()
        disciplines = models.MajorAcademic.objects.values('discipline').distinct()
        types = models.MajorAcademic.objects.values('type').distinct()
        names = models.MajorAcademic.objects.values('name').distinct()
        text = list(xueshuo_data)
        text = text[0]['text']
        text = text.strip()
        text = text.split()
        return render(request, 'zhuanye/xueshuo/title.html',
                      {'table': text, 'disciplines': disciplines, 'types': types, 'names': names})


def zhuanyezhuanshuo(request):
    if request.method == 'POST':
        data = request.POST
        xueshuo_data = models.MajorProfessional.objects.filter(discipline=data['discipline']).filter(
            type=data['type']).filter(name=data['name']).values()
        # table = models.Professional.objects.filter(name=data['school']).values()
        dict__ = list(xueshuo_data)
        disciplines = models.MajorProfessional.objects.values('discipline').distinct()
        types = models.MajorProfessional.objects.values('type').distinct()
        names = models.MajorProfessional.objects.values('name').distinct()
        return render(request, 'zhuanye/zhuanshuo/table.html',
                      {'table': dict__, 'disciplines': disciplines, 'types': types, 'names': names})


def zhuanyePT(request):
    if request.method == 'GET':
        data = request.GET
        xueshuo_data = models.MajorProfessional.objects.filter(discipline=data['discipline']).filter(
            type=data['type']).filter(name=data['name']).filter(school=data['school'].strip()).values('text')
        # table = models.Professional.objects.filter(name=data['school']).values()
        disciplines = models.MajorProfessional.objects.values('discipline').distinct()
        types = models.MajorProfessional.objects.values('type').distinct()
        names = models.MajorProfessional.objects.values('name').distinct()
        text = list(xueshuo_data)
        text = text[0]['text']
        text = text.strip()
        text = text.split()
        return render(request, 'zhuanye/zhuanshuo/title.html',
                      {'table': text, 'disciplines': disciplines, 'types': types, 'names': names})


@csrf_exempt
def yuanxiao(request):
    if request.method == 'GET':
        data = request.GET
        region = models.SchoolList.objects.values('region').distinct()
        subordinate = models.SchoolList.objects.values('subordinate').distinct()
        return render(request, 'yuanxiao/yuanxiao.html',
                      {'name': 'xueshuo', 'regions': region, 'subordinates': subordinate})
    else:
        data = request.POST
        region = models.SchoolList.objects.values('region').distinct()
        subordinate = models.SchoolList.objects.filter(region=data['region']).values('subordinate').distinct()

        result = {"regions": [], "subordinates": []}

        result["regions"] = list(region)
        result["subordinates"] = list(subordinate)
        return HttpResponse(json.dumps(result), content_type="application/json")


def yuanxiaoD(request):
    if request.method == 'POST':
        data = request.POST
        school_data = models.SchoolList.objects.filter(region=data['region']).filter(
            subordinate=data['subordinate'])
        if 'graduate' in data:
            school_data = school_data.filter(graduate=data['graduate'])
        if 'zhx' in data:
            school_data = school_data.filter(zhx=data['zhx'])
        # dict__ = list(school_data.values())
        region = models.SchoolList.objects.values('region').distinct()
        subordinate = models.SchoolList.objects.values('subordinate').distinct()
        return render(request, 'yuanxiao/table.html',
                      {'table': school_data.values(), 'regions': region, 'subordinates': subordinate})


from django.db.models import Q


def tuijian(request):
    if request.method == 'GET':
        title = models.ZhxSchool.objects.values('title').distinct()
        return render(request, 'tuijian/tuijian.html', {'title': title})
    else:
        data = request.POST
        score = data['score']
        zhuanye = data['zhuanye']
        print(data)
        values = []
        values = models.ZhxSchool.objects.exclude(score=0).filter(score__lte=score).filter(title=zhuanye).filter(year='2022年').values(
            'name')
        print(values)
        return render(request, 'tuijian/table.html', {'school_list': values})


@csrf_exempt
def tuijian_zhuanye(request):
    if request.method == 'POST':
        data = request.POST
        if data['type'] == 'xueshuo':
            values = models.Academic.objects.values('name').distinct()
        elif data['type'] == 'zhuanshuo':
            values = models.Professional.objects.values('name').distinct()
        elif data['type'] == 'zhx':
            values = models.ZhxSchool.objects.values('name').distinct()
        return HttpResponse(json.dumps(list(values)), content_type="application/json")


@csrf_exempt
def admin_zhuanshuo(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanshuo.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.Professional.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_xueshuo(request):
    if request.method == 'GET':
        return render(request, 'admin/xueshuo.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.Academic.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_school(request):
    if request.method == 'GET':
        return render(request, 'admin/school.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.DiquSchool.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_student(request):
    if request.method == 'GET':
        return render(request, 'admin/student.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.DiquStudent.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_xuexiao_zhx(request):
    if request.method == 'GET':
        return render(request, 'admin/xuexiaoZHX.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.ZhxSchool.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_zhuanye_xueshuo(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanyeXueshuo.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.MajorAcademic.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_zhuanye_zhuanshuo(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanyeZhuanshuo.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.MajorProfessional.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_yuanxiao(request):
    if request.method == 'GET':
        return render(request, 'admin/yuanxiao.html')
    else:
        data = request.POST
        page = int(data['page'])
        size = int(data['size'])
        values = models.SchoolList.objects.all().values()
        res = {
            "code": 0,
            "msg": "",
            "count": values.count(),
            "data": (list(values))[(page - 1) * size:page * size]
        }
        return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_update(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanshuo.html')
    else:
        data = request.POST
        name = data['name']
        print(data)
        if name == 'xueshuo':
            row = models.Academic.objects.filter(id=data['id']).update(score_a=data['score_a'],
                                                                       score_b=data['score_b'])
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanshuo':
            row = models.Professional.objects.filter(id=data['id']).update(score_a=data['score_a'],
                                                                           score_b=data['score_b'])
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'xuexiaoZHX':
            row = models.ZhxSchool.objects.filter(id=data['id']).update(score=data['score'])
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'student':
            row = models.DiquStudent.objects.filter(id=data['id']).update(graduates_total=data['graduates_total']
                                                                          , graduates_female=data['graduates_female']
                                                                          , graduates_doctor=data['graduates_doctor']
                                                                          , graduates_master=data['graduates_master']
                                                                          , degree_awarded=data['degree_awarded']
                                                                          , entrants_total=data['entrants_total']
                                                                          , entrants_female=data['entrants_female']
                                                                          , entrants_doctor=data['entrants_doctor']
                                                                          , entrants_master=data['entrants_master']
                                                                          , enrolment_total=data['enrolment_total']
                                                                          , enrolment_female=data['enrolment_female']
                                                                          , enrolment_doctor=data['enrolment_doctor']
                                                                          , enrolment_master=data['enrolment_master']
                                                                          , nextyear_total=data['nextyear_total']
                                                                          , nextyear_female=data['nextyear_female']
                                                                          , nextyear_doctor=data['nextyear_doctor']
                                                                          , nextyear_master=data['nextyear_master']
                                                                          )
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'school':
            row = models.DiquSchool.objects.filter(id=data['id']).update(regular_total=data['regular_total']
                                                                         , regular_central=data['regular_central']
                                                                         , degree=data['degree']
                                                                         , higher=data['higher']
                                                                         , adult_total=data['adult_total']
                                                                         , adult_central=data['adult_central']
                                                                         , government=data['government']
                                                                         )
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanyeXueshuo':
            row = models.MajorAcademic.objects.filter(id=data['id']).update(code=data['code']
                                                                            , school=data['school']
                                                                            , title=data['title']
                                                                            , text=data['text']
                                                                            , school_is=data['school_is']

                                                                            )
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanyeZhuanshuo':
            row = models.MajorProfessional.objects.filter(id=data['id']).update(code=data['code']
                                                                                , school=data['school']
                                                                                , title=data['title']
                                                                                , text=data['text']
                                                                                , school_is=data['school_is']

                                                                                )
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'yuanxiao':
            row = models.SchoolList.objects.filter(id=data['id']).update(subordinate=data['subordinate']
                                                                         , graduate=data['graduate']
                                                                         , zhx=data['zhx']
                                                                         , region=data['region']
                                                                         , name=data['school_name']
                                                                         )
            res = {
                "code": 0,
                "msg": "修改成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_delete(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanshuo.html')
    else:
        data = request.POST
        name = data['name']
        print(data)
        if name == 'xueshuo':
            row = models.Academic.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanshuo':
            row = models.Professional.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'xuexiaoZHX':
            row = models.ZhxSchool.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'student':
            row = models.DiquStudent.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'school':
            row = models.DiquSchool.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanyeXueshuo':
            row = models.MajorAcademic.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'zhuanyeZhuanshuo':
            row = models.MajorProfessional.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")
        elif name == 'yuanxiao':
            row = models.SchoolList.objects.filter(id=data['id']).delete()
            res = {
                "code": 0,
                "msg": "删除成功" + str(row) + "条数据",
            }
            return HttpResponse(json.dumps(res), content_type="application/json")


@csrf_exempt
def admin_create(request):
    if request.method == 'GET':
        return render(request, 'admin/zhuanshuo.html')
    else:
        data = request.POST
        name = data['name']
        print(data)
        if name == 'xueshuo':
            row = 0
            row = models.Academic.objects.create(year=data['year'], score_a=data['score_a'],
                                                 score_b=data['score_b'], name=data['title'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/xueshuo/')
        elif name == 'zhuanshuo':
            row = 0
            row = models.Professional.objects.create(year=data['year'], score_a=data['score_a'],
                                                     score_b=data['score_b'], name=data['title'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/zhuanshuo/')
        elif name == 'xuexiaoZHX':
            row = 0
            row = models.ZhxSchool.objects.create(year=data['year'], score=data['score'],
                                                  name=data['school'], title=data['title'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/xuexiaoZHX/')
        elif name == 'student':
            row = 0
            row = models.DiquStudent.objects.create(region=data['region']
                                                    , year=data['year']
                                                    , graduates_total=data['graduates_total']
                                                    , graduates_female=data['graduates_female']
                                                    , graduates_doctor=data['graduates_doctor']
                                                    , graduates_master=data['graduates_master']
                                                    , degree_awarded=data['degree_awarded']
                                                    , entrants_total=data['entrants_total']
                                                    , entrants_female=data['entrants_female']
                                                    , entrants_doctor=data['entrants_doctor']
                                                    , entrants_master=data['entrants_master']
                                                    , enrolment_total=data['enrolment_total']
                                                    , enrolment_female=data['enrolment_female']
                                                    , enrolment_doctor=data['enrolment_doctor']
                                                    , enrolment_master=data['enrolment_master']
                                                    , nextyear_total=data['nextyear_total']
                                                    , nextyear_female=data['nextyear_female']
                                                    , nextyear_doctor=data['nextyear_doctor']
                                                    , nextyear_master=data['nextyear_master'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/student/')
        elif name == 'school':
            row = 0
            row = models.DiquSchool.objects.create(region=data['region']
                                                   , year=data['year']
                                                   , regular_total=data['regular_total']
                                                   , regular_central=data['regular_central']
                                                   , degree=data['degree']
                                                   , higher=data['higher']
                                                   , adult_total=data['adult_total']
                                                   , adult_central=data['adult_central']
                                                   , government=data['government'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/school/')
        elif name == 'zhuanyeXueshuo':
            row = 0
            row = models.MajorAcademic.objects.create(discipline=data['discipline']
                                                      , type=data['type']
                                                      , name=data['zhuanye']
                                                      , code=data['code']
                                                      , school=data['school']
                                                      , title=data['title']
                                                      , text=data['text']
                                                      , school_is=data['school_is'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/zhuanyeXueshuo/')
        elif name == 'zhuanyeZhuanshuo':
            row = 0
            row = models.MajorProfessional.objects.create(discipline=data['discipline']
                                                          , type=data['type']
                                                          , name=data['zhuanye']
                                                          , code=data['code']
                                                          , school=data['school']
                                                          , title=data['title']
                                                          , text=data['text']
                                                          , school_is=data['school_is'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/zhuanyeZhuanshuo/')
        elif name == 'yuanxiao':
            row = 0
            row = models.SchoolList.objects.create(region=data['region']
                                                   , name=data['school_name']
                                                   , subordinate=data['subordinate']
                                                   , graduate=data['graduate']
                                                   , zhx=data['zhx']
                                                   , img=data['img'])
            res = {
                "code": 0,
                "msg": "添加成功" + str(row) + "条数据",
            }
            return redirect('/admin/yuanxiao/')


from yz.scrapy_crawl import main
import threading


@csrf_exempt
def admin_scrapy(request):
    if request.method == 'GET':
        data = request.GET
        name = data['name']
        thread = threading.Thread(target=main, kwargs={'name': name})
        thread.start()
        time.sleep(5)
        return redirect('/')


@csrf_exempt
def admin_upload(request):
    if request.method == 'POST':
        data = request.FILES.get('file')
        file_name = 'web/static/school/' + data.name
        print(file_name)
        res = {
            "code": 0,
            "msg": "上传成功",
            "url": data.name
        }
        with open(file_name, 'wb+') as f:
            f.write(data.read())
        return HttpResponse(json.dumps(res), content_type="application/json")
