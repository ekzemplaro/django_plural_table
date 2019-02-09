from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('author/', views.author, name='author'),
    path('author_create/', views.author_create, name='author_create'),
    path('author_edit/<int:num>', views.author_edit, name='author_edit'),
    path('author_delete/<int:num>', views.author_delete, name='author_delete'),
    path('work/', views.work, name='work'),
    path('work_create/', views.work_create, name='work_create'),
    path('work_edit/<int:num>', views.work_edit, name='work_edit'),
    path('work_delete/<int:num>', views.work_delete, name='work_delete'),
]

