from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.exceptions import ValidationError

class RegistrationFormSerializer(serializers.ModelSerializer):
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
    
    def save(self):
        username = self.validated_data['username']
        password = self.validated_data['password']
        email = self.validated_data['email']
        confirm_password = self.validated_data['confirm_password']
        
        if password != confirm_password:
            raise serializers.ValidationError('Passwords do not match')
        
        if User.objects.filter(username = username).exists():
            raise serializers.ValidationError('Username already exists')
        
        if User.objects.filter(email = email).exists():
            raise serializers.ValidationError('Email already exists')
        
        account = User(
            username = username,
            email = email
        )
        
        account.set_password(password)
        
        account.save()
        return account
    
    