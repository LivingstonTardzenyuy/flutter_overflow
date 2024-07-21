from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework.status import HTTP_400_BAD_REQUEST
from .serializers import RegistrationFormSerializer
from rest_framework.decorators import api_view
from .models import *
from rest_framework import status


@api_view(['POST'])
def perform_create(request):
    if request.method == 'POST':
        seriaizer = RegistrationFormSerializer(data = request.data)
        data = {}
        if seriaizer.is_valid():
            account = seriaizer.save()
            accont_token = Token.objects.get_or_create(user=account)
            data['success'] = 'User registered successfully'
            data['username'] = account.username
            data['email'] = account.email
            data['token'] = accont_token[0].key
            
            return Response(data)
        else:
            data = seriaizer.errors
            return Response(data)
    

@api_view(['POST'])
def perform_logout(request):
    if request.method == 'POST':
        request.user.auth_token.delete()
        return Response(status=status.HTTP_200_OK)