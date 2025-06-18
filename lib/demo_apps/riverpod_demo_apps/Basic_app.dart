import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../state_management/riverpod/SimpleProvider.dart';


/// Use of the stateLess widget ConsumerWidget.

// class BasicApp extends ConsumerWidget {
//   const BasicApp({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final appMessage = ref.watch(basicAppProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Basic App', style: TextStyle(color: Colors.white),),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(appMessage),
//             ElevatedButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 print('Button Pressed');
//               },
//               child: const Text('Press Me'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

/// Use of the stateFul widget ConsumerStatefulWidget.
class BasicApp extends ConsumerStatefulWidget {
  const BasicApp({super.key});

  @override
  ConsumerState<BasicApp> createState() => _BasicAppState();
}

class _BasicAppState extends ConsumerState<BasicApp> {
  @override
  Widget build(BuildContext context) {
    var appMessage = ref.watch(basicAppProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appMessage),
            ElevatedButton(
              onPressed: () {
                // Action when button is pressed
                print('Button Pressed');
              },
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
