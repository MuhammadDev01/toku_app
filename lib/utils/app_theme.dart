import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData defaultTheme = ThemeData(
    primarySwatch: Colors.deepOrange,
    fontFamily: 'ADLaM Display',
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backgroundColor: Colors.grey.shade100,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontFamily: 'ADLaM Display',
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.grey.shade100,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.amber,
    ),
    scaffoldBackgroundColor: Colors.grey.shade100,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrange,
      elevation: 20.0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.deepOrange,
    fontFamily: 'ADLaM Display',
    appBarTheme: const AppBarTheme(
      titleSpacing: 20,
      backgroundColor: Color(0xff27292a),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xff27292a),
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 32,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff27292a),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff27292a),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.deepOrange,
      elevation: 20.0,
    ),
  );
}
