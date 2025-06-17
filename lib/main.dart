import 'package:flutter/material.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyCounterAppProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDarkLightModeProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyDummyAddContactProvider.dart';
import 'package:flutter_state_management_learning/state_management/provider/MyFavouriteAppProvider.dart';
import 'package:provider/provider.dart';
import 'demo_apps/MyCounterApp.dart';
import 'demo_apps/MyDummyAddContact.dart';
import 'demo_apps/MyFavouriteApp.dart';
import 'demo_apps/ThemeModeApp.dart';

void main() {
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
          return MaterialApp(
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
            home: const MyFavouriteApp(),
          );
        },
      ),
    ),
  );
}
