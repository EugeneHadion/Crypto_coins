import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  scaffoldBackgroundColor: const Color.fromARGB(255, 34, 33, 33),
  // primarySwatch: Colors.yellow,
  // useMaterial3: true,
  // dividerColor: const Color.fromARGB(77, 125, 2, 2),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.yellow,
  ),
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.9),
        fontWeight: FontWeight.w700,
        fontSize: 14,
      )),
);
