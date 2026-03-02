import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {

  final List<String> _listSiema = ['lol', 'lolo', 'lole'];

  List<String> get listSiema => _listSiema;

  void addElement(String text) {
    if (_listSiema.length < 15) {
      _listSiema.add(text);
      notifyListeners(); 
    }
  }

  // Funkcja usuwania
  void removeElement(int index) {
    _listSiema.removeAt(index);
    notifyListeners();
  }
}