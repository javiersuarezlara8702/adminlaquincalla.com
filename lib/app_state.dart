import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _numberoforders = prefs.getStringList('ff_numberoforders')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _numberoforders;
    });
    _safeInit(() {
      _photourl = prefs.getString('ff_photourl') ?? _photourl;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _numberoforders = [];
  List<dynamic> get numberoforders => _numberoforders;
  set numberoforders(List<dynamic> value) {
    _numberoforders = value;
    prefs.setStringList(
        'ff_numberoforders', value.map((x) => jsonEncode(x)).toList());
  }

  void addToNumberoforders(dynamic value) {
    numberoforders.add(value);
    prefs.setStringList('ff_numberoforders',
        _numberoforders.map((x) => jsonEncode(x)).toList());
  }

  void removeFromNumberoforders(dynamic value) {
    numberoforders.remove(value);
    prefs.setStringList('ff_numberoforders',
        _numberoforders.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromNumberoforders(int index) {
    numberoforders.removeAt(index);
    prefs.setStringList('ff_numberoforders',
        _numberoforders.map((x) => jsonEncode(x)).toList());
  }

  void updateNumberofordersAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    numberoforders[index] = updateFn(_numberoforders[index]);
    prefs.setStringList('ff_numberoforders',
        _numberoforders.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInNumberoforders(int index, dynamic value) {
    numberoforders.insert(index, value);
    prefs.setStringList('ff_numberoforders',
        _numberoforders.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _comparativenumberoforder = [];
  List<dynamic> get comparativenumberoforder => _comparativenumberoforder;
  set comparativenumberoforder(List<dynamic> value) {
    _comparativenumberoforder = value;
  }

  void addToComparativenumberoforder(dynamic value) {
    comparativenumberoforder.add(value);
  }

  void removeFromComparativenumberoforder(dynamic value) {
    comparativenumberoforder.remove(value);
  }

  void removeAtIndexFromComparativenumberoforder(int index) {
    comparativenumberoforder.removeAt(index);
  }

  void updateComparativenumberoforderAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    comparativenumberoforder[index] =
        updateFn(_comparativenumberoforder[index]);
  }

  void insertAtIndexInComparativenumberoforder(int index, dynamic value) {
    comparativenumberoforder.insert(index, value);
  }

  String _photourl = '';
  String get photourl => _photourl;
  set photourl(String value) {
    _photourl = value;
    prefs.setString('ff_photourl', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
