import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/rg.dart';

class RandomNumberApp extends StatelessWidget {
  const RandomNumberApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Random number generator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RandomConsumer(),
              // Consumer to call a method inside StateNotifier just to change
              // the state
              Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    child: const Text('Generate'),
                    onPressed: () =>
                        ref.read(randomNumberProvider.notifier).generate(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Custom consumer using the provider
class RandomConsumer extends ConsumerWidget {
  const RandomConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(ref.watch(randomNumberProvider).toString());
  }
}
