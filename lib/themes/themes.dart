import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: kPrimayColor,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleSpacing: 20,
    backgroundColor: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  floatingActionButtonTheme: floatingButtonTheme(),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimayColor,
      unselectedItemColor: Colors.grey,
      elevation: 20,
      backgroundColor: Colors.white),
  textTheme: textTheme(),
);
ThemeData darkMode = ThemeData(
  drawerTheme: DrawerThemeData(
    scrimColor: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: ColorScheme.dark(
    primary: kPrimayColor,
  ),
  appBarTheme: AppBarTheme(
    titleSpacing: 20,
    backgroundColor: Colors.grey.shade900,
    elevation: 0.0,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  ),
  floatingActionButtonTheme: floatingButtonTheme(),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: kPrimayColor,
    unselectedItemColor: Colors.grey,
    elevation: 20,
    backgroundColor: Colors.grey.shade900,
  ),
  textTheme: textTheme(),
);

FloatingActionButtonThemeData floatingButtonTheme() {
  return FloatingActionButtonThemeData(
    backgroundColor: kPrimayColor,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}
