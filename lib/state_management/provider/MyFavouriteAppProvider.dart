import 'package:flutter/widgets.dart';

class MyFavouriteAppProvider with ChangeNotifier {
  List<Map<String, dynamic>> _favouriteItems = [];

  List<Map<String, dynamic>> get favouriteItems => _favouriteItems;

  void addFavouriteItem(Map<String, dynamic> item) {
    _favouriteItems.add(item);
    notifyListeners(); // Notify listeners about the change
  }

  void removeFavouriteItem(int index) {
    if (index >= 0 && index < _favouriteItems.length) {
      _favouriteItems.removeAt(index);
      notifyListeners(); // Notify listeners about the change
    }
  }
}
