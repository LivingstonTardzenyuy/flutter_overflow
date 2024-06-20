import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
@immutable
class BaseObjects{
  final String  id;
  final String lastUpdate;
  BaseObjects() : id = Uuid().v4(), lastUpdate = DateTime.now().toIso8601String();


  @override bool operator == (covariant BaseObjects other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}


class ExpensiveObject extends BaseObjects{

}


class CheapObject extends BaseObjects{
w
}