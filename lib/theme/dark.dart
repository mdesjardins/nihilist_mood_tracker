import 'package:flutter/material.dart';
import 'typography.dart';

var darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black38,
    colorScheme: ColorScheme(
        background: Colors.black38,
        onBackground: Colors.white70,
        brightness: Brightness.dark,
        error: Colors.deepPurple,
        onError: Colors.white,
        primary: Colors.blueGrey,
        primaryVariant: Color.fromARGB(255, 0x33, 0x52, 0x5f),
        onPrimary: Colors.white,
        secondary: Colors.indigoAccent,
        secondaryVariant: Colors.indigo,
        onSecondary: Colors.white,
        surface: Colors.black12,
        onSurface: Colors.white,
    ),
    textTheme: textTheme,
);