from django.urls import path
from . import views

app_name = "payinfo"

urlpatterns = [
    path("", views.payinfo, name="payinfo"),
    path("payinfo_order/", views.payinfo_order, name="payinfo_order"),
]
