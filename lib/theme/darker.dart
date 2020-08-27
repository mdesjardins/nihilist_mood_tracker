import 'package:flutter/material.dart';

var darkerTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme(
          background: Colors.black,
          onBackground: Colors.white54,
          brightness: Brightness.dark,
          error: Colors.deepPurple,
          onError: Colors.white,
          primary: Color.fromARGB(255, 0x33, 0x52, 0x5f),
          primaryVariant: Color.fromARGB(255, 0x13, 0x32, 0x3f),
          onPrimary: Colors.white,
          secondary: Colors.black12,
          secondaryVariant: Colors.black38,
          onSecondary: Colors.white60,
          surface: Colors.black12,
          onSurface: Colors.white60,
    )
);