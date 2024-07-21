from django.urls import path
from rest_framework.authtoken import views
from .views import perform_create

urlpatterns = [
 path('api-token-auth/', views.obtain_auth_token),
 
 path('register/', perform_create, name = "register-user"),
]