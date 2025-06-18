import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_learning/state_management/riverpod/StateProvider.dart';

/// Same case with the StateFul widget also in that just need to update the StateFul Widget to the ConsumerStatefulWidget.

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    print('build is running');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            Consumer(
              builder: (context, ref, child) {
                print('build is re-running');
                var counterValue = ref.watch(counterStateProvider);

                return Text(
                  counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),

            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
                ref.read(counterStateProvider.notifier).state++;
              },
              child: const Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterStateProvider.notifier).state--;
              },
              child: const Text('-'),
            ),
          ],
        ),
      ),
    );
  }
}
