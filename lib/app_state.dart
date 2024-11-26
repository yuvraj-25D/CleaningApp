import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _choicename = '';
  String get choicename => _choicename;
  set choicename(String value) {
    _choicename = value;
  }

  bool _check = false;
  bool get check => _check;
  set check(bool value) {
    _check = value;
  }

  DateTime? _dateDetail;
  DateTime? get dateDetail => _dateDetail;
  set dateDetail(DateTime? value) {
    _dateDetail = value;
  }
}
