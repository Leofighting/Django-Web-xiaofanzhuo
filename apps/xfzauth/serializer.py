from rest_framework import serializers
from .models import User


class UserSerializer(serializers.ModelSerializer):
    """用户序列化"""
    class Meta:
        model = User
        fields = ("uid", "telephone", "username", "email", "is_staff", "is_active")
