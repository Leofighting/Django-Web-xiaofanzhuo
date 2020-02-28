from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin, BaseUserManager
from shortuuidfield import ShortUUIDField


class UserManager(BaseUserManager):
    """重写 UserManager """
    def _create_user(self, telephone, username, password, **kwargs):
        """创建用户"""
        if not telephone:
            raise ValueError("请输入手机号码！")
        if not username:
            raise ValueError("请输入用户名！")
        if not password:
            raise ValueError("请输入密码！")

        user = self.model(telephone=telephone, username=username, **kwargs)
        user.set_password(password)
        user.save()
        return user

    def create_user(self, telephone, username, password, **kwargs):
        kwargs["is_superuser"] = False
        return self._create_user(telephone, username, password, **kwargs)

    def create_superuser(self, telephone, username, password, **kwargs):
        kwargs["is_superuser"] = True
        kwargs["is_staff"] = True
        return self._create_user(telephone, username, password, **kwargs)


class User(AbstractBaseUser, PermissionsMixin):
    """用户模型"""
    uid = ShortUUIDField(primary_key=True)
    telephone = models.CharField(max_length=11, unique=True)
    email = models.EmailField(unique=True, null=True)
    username = models.CharField(max_length=100)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    date_join = models.DateTimeField(auto_now_add=True)

    USERNAME_FIELD = "telephone"  # 默认使用username
    REQUIRED_FIELDS = ["username"]  # 指定创建超级用户时需要填写 username 字段
    EMAIL_FIELD = "email"

    objects = UserManager()  # 将重写的 UserManager() 添加到 objects 中

    def get_full_name(self):
        return self.username

    def get_short_name(self):
        return self.username
