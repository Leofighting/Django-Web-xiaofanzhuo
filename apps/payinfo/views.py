from django.shortcuts import render, reverse

from apps.payinfo.models import Payinfo, PayinfoOrder
from apps.xfzauth.decorators import xfz_login_required


def payinfo(request):
    context = {
        "payinfos": Payinfo.objects.all()
    }
    return render(request, 'payinfo/payinfo.html', context=context)


@xfz_login_required
def payinfo_order(request):
    """付费咨询"""
    payinfo_id = request.GET.get("payinfo_id")
    payinfo = Payinfo.objects.get(pk=payinfo_id)
    order = PayinfoOrder.objects.create(payinfo=payinfo, buyer=request.user,
                                        status=1, amount=payinfo.price)
    context = {
        "goods": {
            "thumbnail": "",
            "price": payinfo.price,
            "title": payinfo.title
        },
        "order": order,
        "notify_url": "",
        "return_url": request.build_absolute_uri(reverse("payinfo:payinfo"))
    }
    return render(request, "course/course_order.html", context=context)
