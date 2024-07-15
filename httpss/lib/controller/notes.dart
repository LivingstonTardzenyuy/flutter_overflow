import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../models/notes.dart';
import 'dart:developer';
class NotesController extends ChangeNotifier{
  List<Notes> _notes = [];
  List<Notes> get notes => _notes;

  static const String baseUrl = 'http://192.168.100.26:8000/apis/v1';

  Future<void> fetchNotes() async{
    log("Fetching Notes");
    try{
      final Response response = await http.get(Uri.parse('$baseUrl/notes/'));
      log('Response status code: ${response.statusCode}');

      if (response.statusCode == 200){
        log('got results: ${response.body}');
        List<dynamic> data = json.decode(response.body) as List;
        _notes = data.map<Notes>((json) => Notes.fromJson(json)).toList();
        log('todos : $_notes');
        notifyListeners();
      }
    } catch(e){
      log('Error fetching: $e');
      throw Exception('Error Fetching Notes');
    }
  }
}