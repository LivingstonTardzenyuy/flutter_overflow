import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/models.dart';

class BreadCrumbProvider extends ChangeNotifier{
  final List<BreadCrumb> _items = [];
  UnmodifiableListView<BreadCrumb> get item => UnmodifiableListView(_items);  // this provide only read access

  void add (BreadCrumb breadCrumb){
    for(final item in _items){
      item.isActivate();
    }
    _items.add(breadCrumb);
    notifyListeners();
  }

  void reset(){
    _items.clear();
    notifyListeners();
  }


}