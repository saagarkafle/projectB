import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomNumberGenerator extends StateNotifier<int> {
  RandomNumberGenerator() : super(Random().nextInt(9999));

  void generate() {
    state = Random().nextInt(9999);
  }
}

// State notifier provider holding the state
final randomNumberProvider = StateNotifierProvider(
  (ref) => RandomNumberGenerator(),
);
