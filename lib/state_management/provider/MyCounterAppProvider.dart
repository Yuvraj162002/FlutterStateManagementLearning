import 'package:flutter/cupertino.dart';

class MyCounterAppProvider extends ChangeNotifier {
  int _counter = 0; // here we define a private variable to hold the counter value, so not directly accessible from outside the class

  int get counterValue => _counter; // This is a getter that allows us to access the counter value from outside the class

  void incrementCounter() {
    // Logic to increment the counter
    _counter++;
    notifyListeners(); // Notify listeners about the change (if using a state management solution)
  }

  void decrementCounter() {
    // Logic to decrement the counter
    _counter--;
    notifyListeners(); // Notify listeners about the change (if using a state management solution)
  }
}
