# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Academic(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    year = models.CharField(max_length=255, blank=True, null=True)
    score_a = models.IntegerField(blank=True, null=True)
    score_b = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'academic'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DiquSchool(models.Model):
    region = models.CharField(max_length=255)
    year = models.CharField(max_length=255, blank=True, null=True)
    regular_total = models.IntegerField(blank=True, null=True)
    regular_central = models.IntegerField(blank=True, null=True)
    degree = models.IntegerField(blank=True, null=True)
    higher = models.IntegerField(blank=True, null=True)
    adult_total = models.IntegerField(blank=True, null=True)
    adult_central = models.IntegerField(blank=True, null=True)
    government = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'diqu_school'


class DiquStudent(models.Model):
    region = models.CharField(max_length=255, blank=True, null=True)
    year = models.CharField(max_length=255, blank=True, null=True)
    graduates_total = models.IntegerField(blank=True, null=True)
    graduates_female = models.IntegerField(blank=True, null=True)
    graduates_doctor = models.IntegerField(blank=True, null=True)
    graduates_master = models.IntegerField(blank=True, null=True)
    degree_awarded = models.IntegerField(blank=True, null=True)
    entrants_total = models.IntegerField(blank=True, null=True)
    entrants_female = models.IntegerField(blank=True, null=True)
    entrants_doctor = models.IntegerField(blank=True, null=True)
    entrants_master = models.IntegerField(blank=True, null=True)
    enrolment_total = models.IntegerField(blank=True, null=True)
    enrolment_female = models.IntegerField(blank=True, null=True)
    enrolment_doctor = models.IntegerField(blank=True, null=True)
    enrolment_master = models.IntegerField(blank=True, null=True)
    nextyear_total = models.IntegerField(db_column='nextYear_total', blank=True, null=True)  # Field name made lowercase.
    nextyear_female = models.IntegerField(db_column='nextYear_female', blank=True, null=True)  # Field name made lowercase.
    nextyear_doctor = models.IntegerField(db_column='nextYear_doctor', blank=True, null=True)  # Field name made lowercase.
    nextyear_master = models.IntegerField(db_column='nextYear_master', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'diqu_student'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class MajorAcademic(models.Model):
    discipline = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    code = models.CharField(max_length=255, blank=True, null=True)
    school = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    text = models.TextField(blank=True, null=True)
    school_is = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'major_academic'


class MajorProfessional(models.Model):
    discipline = models.CharField(max_length=255, blank=True, null=True)
    type = models.CharField(max_length=255, blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    code = models.CharField(max_length=255, blank=True, null=True)
    school = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    text = models.TextField(blank=True, null=True)
    school_is = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'major_professional'


class Professional(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    year = models.CharField(max_length=255, blank=True, null=True)
    score_a = models.IntegerField(blank=True, null=True)
    score_b = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'professional'


class SchoolList(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    region = models.CharField(max_length=255, blank=True, null=True)
    subordinate = models.CharField(max_length=255, blank=True, null=True)
    graduate = models.CharField(max_length=255, blank=True, null=True)
    zhx = models.CharField(max_length=255, blank=True, null=True)
    img = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'school_list'


class Schoolname(models.Model):
    school = models.CharField(primary_key=True, max_length=255)
    name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'schoolname'


class User(models.Model):
    username = models.CharField(max_length=255, blank=True, null=True)
    password = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    role = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'


class ZhxSchool(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True)
    year = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(max_length=255, blank=True, null=True)
    score = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'zhx_school'
