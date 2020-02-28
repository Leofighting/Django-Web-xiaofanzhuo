from django.db.models import Q
from django.http import Http404
from django.shortcuts import render
from django.conf import settings

from apps.news.forms import PublicCommentForm
from apps.news.models import News, NewsCategory, Comment, Banner
from apps.news.serializer import NewsSerializer, CommentSerializer
from apps.xfzauth.decorators import xfz_login_required
from utils import restful


def index(request):
    """首页"""
    count = settings.NEWS_COUNT_OF_INDEX
    newses = News.objects.select_related("category", "author").all()[0: count]
    categories = NewsCategory.objects.all()
    context = {
        "newses": newses,
        "categories": categories,
        "banners": Banner.objects.all()
    }
    return render(request, "news/index.html", context=context)


def news_list(request):
    """新闻列表"""
    page = int(request.GET.get("p", 1))
    category_id = int(request.GET.get("category_id", 0))  # 0 代表不作分类，直接获取全部新闻
    start = (page - 1) * settings.NEWS_COUNT_OF_INDEX
    end = start + settings.NEWS_COUNT_OF_INDEX
    if category_id == 0:
        newses = News.objects.select_related("category", "author").all()[start: end]
    else:
        newses = News.objects.select_related("category", "author").filter(category_id=category_id)[start: end]
    serializer = NewsSerializer(newses, many=True)
    data = serializer.data
    return restful.result(data=data)


def news_detail(request, news_id):
    """新闻详情"""
    try:
        news = News.objects.select_related("category", "author").prefetch_related("comments__author").get(pk=news_id)
    except News.DoesNotExist:
        raise Http404()
    context = {
        "news": news
    }
    return render(request, "news/news_detail.html", context=context)


@xfz_login_required
def public_comment(request):
    form = PublicCommentForm(request.POST)
    if form.is_valid():
        news_id = form.cleaned_data.get("news_id")
        content = form.cleaned_data.get("content")
        news = News.objects.get(pk=news_id)
        comment = Comment.objects.create(content=content, news=news, author=request.user)
        serializer = CommentSerializer(comment)

        return restful.result(data=serializer.data)
    else:
        return restful.params_error(message=form.get_errors())


def search(request):
    """搜索"""
    q = request.GET.get("q")
    context = {}
    if q:
        newses = News.objects.filter(Q(title__icontains=q)|Q(content__icontains=q))
        context["newses"] = newses

    return render(request, "search/search.html", context=context)



