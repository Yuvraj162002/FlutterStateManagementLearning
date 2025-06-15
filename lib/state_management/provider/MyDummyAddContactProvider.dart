
import 'package:flutter/cupertino.dart';

class MyDummyAddContactProvider extends ChangeNotifier {

  List<Map<String, dynamic>> _mContacts = [];

  List<Map<String, dynamic>> get contacts => _mContacts;

  void addContact(Map<String, dynamic>contact) {
    _mContacts.add(contact);
    notifyListeners(); // Notify listeners about the change
  }

  void removeContact(int index) {
    if (index >= 0 && index < _mContacts.length) {
      _mContacts.removeAt(index);
      notifyListeners(); // Notify listeners about the change
    }
  }
}