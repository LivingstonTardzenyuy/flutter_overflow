import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../models/todo.dart';
import 'package:http/http.dart' as http;

class TodoProvider with ChangeNotifier {
  List <Todo> _todos = [];

  List<Todo> get todos => _todos;

  // static const String baseUrl = 'http://127.0.0.1:8000/apis/v1';
  // static const String baseUrl = 'http://192.168.100.17:8000/apis/v1';
  static const String baseUrl = 'http://192.168.100.26:8000/apis/v1';
  Future<void> fetchTasks() async {
    log('Fetching tasks from $baseUrl');
    try{
      final response = await http.get(Uri.parse('$baseUrl/?format=json'));
      log('Response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        log('got results: ${response.body}');
        List<dynamic> data = json.decode(response.body) as List;
        _todos = data.map<Todo>((json) => Todo.fromJson(json)).toList();
        log('todos: $_todos');
        notifyListeners();
      } else {
        log('error: ${response.statusCode} ${response.body}');
        throw Exception('Failed to load todos');
      }
    } catch(e){
      log('Exception: $e');
      throw Exception('Failed to load todos');
    }
  }

  Future<void> addTasks(Todo todo) async{
    try{
      final response = await http.post(
          Uri.parse("$baseUrl/",
          ),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          todo.toJson(),
        )
      );

      if (response.statusCode == 201){
        todo.id = json.decode(response.body)['id'];   // specifiying the id
        _todos.add(todo);
        var data = jsonDecode(response.body);
        log('Task created: $data');
        notifyListeners();
      } else {
        throw Exception('Failed to create task');
      }
    } catch (e){
      log ('Exception: $e');
      throw Exception(("Failed to add todo"));
    }
  }

  Future<void> deleteTask(Todo todo) async{
    try{
      final response = await http.delete(
          Uri.parse("$baseUrl/${todo.id}/"));

      if (response.statusCode == 204){
        _todos.remove(todo);
        notifyListeners();
      }
    } catch(e){
      throw Exception('Failed to delete $e');
    }
  }
}
