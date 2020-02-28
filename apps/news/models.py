from django.db import models


class NewsCategory(models.Model):
    """新闻分类"""
    name = models.CharField(max_length=20)


class News(models.Model):
    """新闻"""
    title = models.CharField(max_length=200)
    desc = models.CharField(max_length=200)
    thumbnail = models.URLField()
    content = models.TextField()
    pub_time = models.DateTimeField(auto_now_add=True)
    category = models.ForeignKey("NewsCategory", on_delete=models.SET_NULL, null=True)
    author = models.ForeignKey("xfzauth.User", on_delete=models.SET_NULL, null=True)

    class Meta:
        ordering = ["-pub_time"]


class Comment(models.Model):
    """评论"""
    content = models.CharField(max_length=200)
    pub_time = models.DateTimeField(auto_now_add=True)
    news = models.ForeignKey("News", on_delete=models.CASCADE, related_name="comments")
    author = models.ForeignKey("xfzauth.User", on_delete=models.CASCADE)

    class Meta:
        ordering = ["-pub_time"]


class Banner(models.Model):
    """轮播图"""
    priority = models.IntegerField(default=0)
    image_url = models.URLField()
    link_to = models.URLField()
    pub_time = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["-priority"]