import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/shared_pref_manager.dart';
import 'package:flutter_theme/theme.dart';
import 'package:flutter_theme/theme_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => themeLight,
        themedWidgetBuilder: (BuildContext context, ThemeData themeData) {
          return FutureBuilder(
            initialData: 0,
            future: SharedPrefManager.getInt(keyTheme),
            builder: (context, snapshot) => MaterialApp(
              home: ThemeScreen(),
              debugShowCheckedModeBanner: false,
              theme: snapshot.data == 0 ? themeLight : themeDark,
            ),
          );
        });
  }
}
