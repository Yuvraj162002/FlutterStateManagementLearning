
// This is a simple Riverpod provider that returns a string message for this we not able to change it state just listen it.
import 'package:flutter_riverpod/flutter_riverpod.dart';

final basicAppProvider = Provider<String>((ref) {
  return "This is a basics app using Riverpod....";
});