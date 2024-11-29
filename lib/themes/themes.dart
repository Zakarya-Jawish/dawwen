import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 25, 213, 255),
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: kPrimayColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimayColor,
      unselectedItemColor: Colors.grey,
      elevation: 20,
      backgroundColor: Colors.white),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  )),
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
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: kPrimayColor,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: kPrimayColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: kPrimayColor,
    unselectedItemColor: Colors.grey,
    elevation: 20,
    backgroundColor: Colors.grey.shade900,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);
