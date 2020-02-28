from io import BytesIO

from django.http import HttpResponse
from django.shortcuts import render, redirect, reverse
from django.contrib.auth import login, logout, authenticate
from django.views.decorators.http import require_POST
from django.core.cache import cache
from django.contrib.auth import get_user_model

from utils import restful
from utils.aliyunsdk import aliyunsms
from utils.captcha.xfzcaptcha import Captcha
from .forms import LoginForm, RegisterForm

User = get_user_model()


@require_POST
def login_view(request):
    """登陆视图"""
    form = LoginForm(request.POST)
    if form.is_valid():
        telephone = form.cleaned_data.get("telephone")
        password = form.cleaned_data.get("password")
        remember = form.cleaned_data.get("remember")
        user = authenticate(request, username=telephone, password=password)
        if user:
            if user.is_active:
                login(request, user)
                if remember:
                    request.session.set_expiry(None)
                else:
                    request.session.set_expiry(0)
                return restful.ok()
            else:
                return restful.un_auth(message="您的账号已被冻结~")
        else:
            return restful.params_error(message="手机号码或者密码错误~")
    else:
        errors = form.get_errors()
        return restful.params_error(message=errors)


def logout_view(request):
    """退出登录"""
    logout(request)
    return redirect(reverse('index'))


def img_captcha(request):
    """图形验证码"""
    text, image = Captcha.gene_code()
    # 通过BytesIO()， 存储图片的流数据
    out = BytesIO()
    # 调用image的save()，将 image 对象保存到 BytesIO 中
    image.save(out, "png")
    # 将 文本指针 移动到最开始的位置
    out.seek(0)
    response = HttpResponse(content_type="image/png")
    response.write(out.read())
    response["Content-length"] = out.tell()
    cache.set(text.lower(), text.lower(), 10*60)
    return response


def sms_captcha(request):
    """短信验证码"""
    telephone = request.GET.get("telephone")
    code = Captcha.gene_number()
    cache.set(telephone, code, 10*60)
    # result = aliyunsms.send_sms(telephone, code)
    print("短信验证码：", code)
    return restful.ok()


@require_POST
def register(request):
    """用户注册"""
    form = RegisterForm(request.POST)
    if form.is_valid():
        telephone = form.cleaned_data.get("telephone")
        username = form.cleaned_data.get("username")
        password = form.cleaned_data.get("password1")
        user = User.objects.create_user(telephone=telephone, username=username, password=password)
        login(request, user)
        return restful.ok()
    else:
        return restful.params_error(message=form.get_errors())
