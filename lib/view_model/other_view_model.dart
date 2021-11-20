import 'package:flutter/material.dart';

class OtherViewModel extends ChangeNotifier {
  String? _name;
  String? _phone;

  String? get name => _name;
  String? get phone => _phone;

  void setValues(String? nameValue, String? phoneValue) {
    _name = nameValue;
    _phone = phoneValue;
    notifyListeners();
  }
}
