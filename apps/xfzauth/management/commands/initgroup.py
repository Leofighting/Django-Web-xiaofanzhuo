from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group, Permission, ContentType

from apps.news.models import NewsCategory, News, Banner, Comment
from apps.course.models import Course, CourseCategory, CourseOrder, Teacher
from apps.payinfo.models import Payinfo, PayinfoOrder


class Command(BaseCommand):
    def handle(self, *args, **options):
        # 编辑组：管理新闻、课程、评论、轮播图等
        edit_content_types = [
            ContentType.objects.get_for_model(News),
            ContentType.objects.get_for_model(NewsCategory),
            ContentType.objects.get_for_model(NewsCategory),
            ContentType.objects.get_for_model(Banner),
            ContentType.objects.get_for_model(Comment),
            ContentType.objects.get_for_model(Course),
            ContentType.objects.get_for_model(CourseCategory),
            ContentType.objects.get_for_model(Teacher),
            ContentType.objects.get_for_model(Payinfo),
        ]
        edit_permissions = Permission.objects.filter(content_type__in=edit_content_types)
        edit_group = Group.objects.create(name="编辑")
        edit_group.permissions.set(edit_permissions)
        edit_group.save()
        self.stdout.write(self.style.SUCCESS("编辑分组创建完成~"))

        # 财务组：课程订单、付费咨询订单
        finance_content_types = [
            ContentType.objects.get_for_model(CourseOrder),
            ContentType.objects.get_for_model(PayinfoOrder),
        ]
        finance_permissions = Permission.objects.filter(
            content_type__in=finance_content_types
        )
        finance_group = Group.objects.create(name="财务")
        finance_group.permissions.set(finance_permissions)
        finance_group.save()
        self.stdout.write(self.style.SUCCESS("财务分组创建完成~"))

        # 管理员：编辑组 + 财务组
        admin_permissions = edit_permissions.union(finance_permissions)
        admin_group = Group.objects.create(name="管理员")
        admin_group.permissions.set(admin_permissions)
        admin_group.save()
        self.stdout.write(self.style.SUCCESS("管理员分组创建完成~"))
