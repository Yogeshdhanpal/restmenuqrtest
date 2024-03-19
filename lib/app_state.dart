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

  String _input = '';
  String get input => _input;
  set input(String value) {
    _input = value;
  }

  int _test = 0;
  int get test => _test;
  set test(int value) {
    _test = value;
  }

  String _InputWaiterName = 'yogi';
  String get InputWaiterName => _InputWaiterName;
  set InputWaiterName(String value) {
    _InputWaiterName = value;
  }

  int _InputTableNumber = 16;
  int get InputTableNumber => _InputTableNumber;
  set InputTableNumber(int value) {
    _InputTableNumber = value;
  }

  int _CategoryIdVar = 0;
  int get CategoryIdVar => _CategoryIdVar;
  set CategoryIdVar(int value) {
    _CategoryIdVar = value;
  }

  String _TempDocId = '';
  String get TempDocId => _TempDocId;
  set TempDocId(String value) {
    _TempDocId = value;
  }
}
