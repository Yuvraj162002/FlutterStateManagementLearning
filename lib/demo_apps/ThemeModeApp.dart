import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state_management/provider/MyDarkLightModeProvider.dart';

class ThemeModeApp extends StatelessWidget {
  const ThemeModeApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme Mode App',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Consumer<MyDarkLightModeProvider>(
        builder: (context, themeChanger, _) {
          return Column(
            children: [
              RadioListTile<ThemeMode>(
                title: Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: themeChanger.isThemeMode,
                onChanged: themeChanger.toggleThemeMode,
              ),
              RadioListTile<ThemeMode>(
                title: Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: themeChanger.isThemeMode,
                onChanged: themeChanger.toggleThemeMode,
              ),

              RadioListTile<ThemeMode>(
                title: Text('System Mode'),
                value: ThemeMode.system,
                groupValue: themeChanger.isThemeMode,
                onChanged: themeChanger.toggleThemeMode,
              ),
            ],
          );
        },
      ),
    );
  }
}
