import 'dart:convert';
import 'dart:developer';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:httpss/models/notes.dart';
import 'package:httpss/todo/notes.dart';

import '../models/todo.dart';


class NoteController extends GetxController{
  var _todos = <Notes>[].obs;

  RxList<Notes> get notes => _todos;


  static const String baseUrl = 'http://192.168.52.247:8000/apis/v1';

  Future<void> fetchTasks() async{
    log("Fetching Todo's");
    try{
      final  response = await http.get(
        Uri.parse("$baseUrl/notes/?format=json")
      );
      if (response.statusCode == 200){
       log('Got resulst: ${response.statusCode}');
       List<dynamic> data = json.decode(response.body) as List;
       _todos.value = data.map<Notes>((json) => Notes.fromJson(json)).toList();
       update();
      }
    } catch(e){
      throw Exception("Failed to fetch Notes $e");
    }
  }


  Future<void> addTasks async{
    log('Adding Tasks to Todo')
}

}