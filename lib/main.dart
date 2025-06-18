import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyCounterAppProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDarkLightModeProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDummyAddContactProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyFavouriteAppProvider.dart';
import 'package:provider/provider.dart';
import 'demo_apps/provider_demo_apps/MyFavouriteApp.dart';
import 'demo_apps/provider_demo_apps/ThemeModeApp.dart';
import 'demo_apps/riverpod_demo_apps/Basic_app.dart';
import 'demo_apps/riverpod_demo_apps/CounterApp_riverpod.dart';

/**void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => MyDummyAddContactProvider()),
        ChangeNotifierProvider(create: (create) => MyCounterAppProvider()),
        ChangeNotifierProvider(create: (create) => MyDarkLightModeProvider()),
        ChangeNotifierProvider(create: (create) => MyFavouriteAppProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          // Here you can access the providers and their values
          final themeMode = Provider.of<MyDarkLightModeProvider>(context);
          return ProviderScope(
            child: MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeMode.isThemeMode,
              theme: ThemeData(
                primarySwatch: Colors.amber,
                brightness: Brightness.light,
              ),
              darkTheme: ThemeData(
                primarySwatch: Colors.amber,
                brightness: Brightness.dark,
              ),
              debugShowCheckedModeBanner: false,
              home: const BasicApp(),
            ),
          );
        },
      ),
    ),
  );
} */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Riverpod Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: const CounterApp(), // Use your Riverpod-based screen
      ),
    );
  }
}
