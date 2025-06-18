
import 'package:flutter_riverpod/flutter_riverpod.dart';

var counterStateProvider = StateProvider<int>((ref) {
  return 0; // Initial value of the counter
});