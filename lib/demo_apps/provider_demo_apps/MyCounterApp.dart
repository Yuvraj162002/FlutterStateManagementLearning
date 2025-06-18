import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../state_management/provider/MyCounterAppProvider.dart';


class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyCounterApp build method called');

    /** By doing this the  counter value is updated but it will build the whole page for jst a single value change.
        so to handle this whole page is not rebuilt we use consumer for that widgets.**/
    // var counterAppProvider = Provider.of<MyCounterAppProvider>(
    //   context,
    //   listen: true,
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyCounterAppProvider>(
              builder: (newContext, _, _) {
                print('MyCounterApp new build method called');

                return Text(
                  'Counter Value is ${Provider.of<MyCounterAppProvider>(newContext, listen: true).counterValue}',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            // Text(
            //   'Counter Value is ${counterAppProvider.counterValue}',
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 12,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                Provider.of<MyCounterAppProvider>(
                  context,
                  listen: false,
                ).incrementCounter();
              },
              child: Text(
                'Click Me to Increase Counter',
                style: TextStyle(color: Colors.black, fontSize: 21),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<MyCounterAppProvider>(
                  context,
                  listen: false,
                ).decrementCounter();
              },
              child: Text(
                'Click Me to Decrease Counter',
                style: TextStyle(color: Colors.black, fontSize: 21),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
