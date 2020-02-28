from rest_framework import serializers
from .models import NewsCategory, News, Comment, Banner
from ..xfzauth.serializer import UserSerializer


class NewsCategorySerializer(serializers.ModelSerializer):
    """新闻分类序列化"""
    class Meta:
        model = NewsCategory
        fields = ("id", "name")


class NewsSerializer(serializers.ModelSerializer):
    """新闻序列化"""
    category = NewsCategorySerializer()
    author = UserSerializer()

    class Meta:
        model = News
        fields = ("id", "title", "desc", "thumbnail", "pub_time", "category", "author")


class CommentSerializer(serializers.ModelSerializer):
    """评论序列化"""
    author = UserSerializer()

    class Meta:
        model = Comment
        fields = ("id", "content", "author", "pub_time")


class BannerSerializer(serializers.ModelSerializer):
    """轮播图序列化"""
    class Meta:
        model = Banner
        fields = ("id", "image_url", "priority", "link_to")
