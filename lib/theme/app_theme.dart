import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Cabin',
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Cabin',
        ),
    accentTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Cabin',
        ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Cabin',
        ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Cabin',
        ),
    accentTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Cabin',
        ),
  );
}
