import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey,
      elevation: 20,
      backgroundColor: Colors.white),
  textTheme: textTheme(),
);
ThemeData darkMode = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    ),
  ),
  drawerTheme: DrawerThemeData(
    scrimColor: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: const ColorScheme.dark(
    primary: kPrimaryColor,
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
    selectedItemColor: kPrimaryColor,
    unselectedItemColor: Colors.grey,
    elevation: 20,
    backgroundColor: Colors.grey.shade900,
  ),
  textTheme: textTheme(),
);

FloatingActionButtonThemeData floatingButtonTheme() {
  return const FloatingActionButtonThemeData(
    backgroundColor: kPrimaryColor,
  );
}

TextTheme textTheme() {
  return TextTheme(
    displayLarge: const TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: kPrimaryBlack,
    ),
    displaySmall: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: kPrimaryBlack,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 25,
      color: kPrimaryBlack,
    ),
    bodyMedium: const TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle(
      fontFamily: 'BalooBhaijaan2',
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: kPrimaryBlack.withOpacity(.5),
    ),
  );
}
