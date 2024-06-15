import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/models.dart';

class BreadCrumbProvider extends ChangeNotifier{
  final List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get item => UnmodifiableListView(_items);  // this provide only read access
}