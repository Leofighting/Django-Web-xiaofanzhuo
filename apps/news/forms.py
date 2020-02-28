from django import forms

from apps.forms import FormMixin


class PublicCommentForm(forms.Form, FormMixin):
    """评论表单"""
    news_id = forms.IntegerField()
    content = forms.CharField(max_length=200)
