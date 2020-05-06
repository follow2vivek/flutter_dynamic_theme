import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme/shared_pref_manager.dart';
import 'package:flutter_theme/theme.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          'Dynamic Theme',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: MaterialButton(
                onPressed: () {

                  SharedPrefManager.setInt(keyTheme, 0);
                  DynamicTheme.of(context).setThemeData(themeLight);
                },
                color: Theme.of(context).buttonColor,
                child: Text(
                  'Light Theme',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  SharedPrefManager.setInt(keyTheme, 1);
                  DynamicTheme.of(context).setThemeData(themeDark);
                },
                color: Theme.of(context).buttonColor,
                child: Text(
                  'Dark Theme',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
