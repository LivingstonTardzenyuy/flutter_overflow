import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/todo.dart';
import 'package:http/http.dart' as http;

class TodoProvider with ChangeNotifier{
  List <Todo> _todos = [];
  List<Todo> get todos => _todos;

  static const String baseUrl = 'http://127.0.0.1:8000/apis/v1/';

  Future<void> fetchTasks() async{
    final response  = await http.get(Uri.parse('$baseUrl/?format=json'));

    if (response.statusCode == 200){
      var data = json.decode(response.body) as List;
      _todos = data.map<Todo>((json) => Todo.fromJson(json)).toList();
      notifyListeners();

    } else {
      throw Exception('Failed to load todos');
    }
  }
}