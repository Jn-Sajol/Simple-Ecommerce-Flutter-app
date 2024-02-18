import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String,dynamic>> item = [];
  void addItem(product) {
    item.add(product);
    notifyListeners();
  }

  void removeItem(product) {
    item.remove(product);
    notifyListeners();
  }
}
