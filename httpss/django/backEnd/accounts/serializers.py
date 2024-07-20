from django.contrib.auth.models import User
from rest_framework import serializers


class RegistrationForm(serializers.ModelSerializer):
    confirm_password = serializers.CharField(
        style={
            'input_type':'password'
        },
        write_only=True
    )
    class Meta:
    
        model = User
        fields = ('username', 'password', 'email', 'confirm_password',)
        extra_kwargs = {
            'password': {
                'write_only': True,
            }
        }