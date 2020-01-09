import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int _count = 1;
  String _name = "";

  String get name {
    return _name;
  }

  int get count {
    print("_count $_count");
    return _count;
  }

  Future<void> userName() async {
    var res =
        await Dio().get('https://jsonplaceholder.typicode.com/todos/$_count');
    _name = jsonDecode(res.toString())["title"];
    print("in username");
    notifyListeners();
  }

  increment() {
    _count++;
    // userName();
    notifyListeners();
  }
}
