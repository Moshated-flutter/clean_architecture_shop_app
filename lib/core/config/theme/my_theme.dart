import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    textTheme: const TextTheme(
    ),
    highlightColor: Colors.indigo,
    backgroundColor: Colors.black,
    canvasColor: Colors.grey,
    unselectedWidgetColor: Colors.white70,
    primaryColorLight: const Color.fromRGBO(252, 178, 98, 1),
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.amber.shade800,
    indicatorColor: Colors.amber,
    secondaryHeaderColor: const Color.fromRGBO(176, 106, 2, 1),
    iconTheme: IconThemeData(color: Colors.amber.shade800),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.red,
      selectionColor: Colors.green,
      selectionHandleColor: Colors.blue,
    )
,
  );

  static final lightTheme = ThemeData(
    textTheme: const TextTheme(
    
    ),
    highlightColor: Colors.indigo,
    backgroundColor: Colors.black,
    unselectedWidgetColor: Colors.black,
    primaryColorLight: const Color.fromRGBO(252, 178, 98, 1),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.amber.shade800,
    indicatorColor: Colors.amber,
    secondaryHeaderColor: const Color.fromRGBO(176, 106, 2, 1),
    iconTheme: IconThemeData(color: Colors.amber.shade800),
    //
    // // colorScheme: const ColorScheme.light()
  );
}