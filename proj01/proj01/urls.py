
from django.contrib import admin
from django.urls import path
from django.urls import include

urlpatterns = [
    path('plural_table/', include('plural_table.urls')),
    path('admin/', admin.site.urls),
]
