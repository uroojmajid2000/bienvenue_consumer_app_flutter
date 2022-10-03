import 'package:bienvenue_consumer_app_flutter/resources/constants.dart';
import 'package:bienvenue_consumer_app_flutter/shared/transition/no_transition.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      primarySwatch: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 2.0,
      ),
      fontFamily: 'Lato',
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: NoTransitionsBuilder(),
          TargetPlatform.iOS: NoTransitionsBuilder(),
        },
      ),
    );
  }
}
