import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _TODOLIST = prefs.getStringList('ff_TODOLIST') ?? _TODOLIST;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _TODOLIST = [];
  List<String> get TODOLIST => _TODOLIST;
  set TODOLIST(List<String> value) {
    _TODOLIST = value;
    prefs.setStringList('ff_TODOLIST', value);
  }

  void addToTODOLIST(String value) {
    _TODOLIST.add(value);
    prefs.setStringList('ff_TODOLIST', _TODOLIST);
  }

  void removeFromTODOLIST(String value) {
    _TODOLIST.remove(value);
    prefs.setStringList('ff_TODOLIST', _TODOLIST);
  }

  void removeAtIndexFromTODOLIST(int index) {
    _TODOLIST.removeAt(index);
    prefs.setStringList('ff_TODOLIST', _TODOLIST);
  }

  void updateTODOLISTAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _TODOLIST[index] = updateFn(_TODOLIST[index]);
    prefs.setStringList('ff_TODOLIST', _TODOLIST);
  }

  void insertAtIndexInTODOLIST(int index, String value) {
    _TODOLIST.insert(index, value);
    prefs.setStringList('ff_TODOLIST', _TODOLIST);
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
