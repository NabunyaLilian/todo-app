import 'package:flutter/material.dart';
import 'package:todo_app/theme/colors.dart';

/// Light theme
ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textLight),
        bodyMedium: TextStyle(fontSize: 16, color: AppColors.textLight)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary, foregroundColor: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBackgroundColor,
        unselectedItemColor: AppColors.inActiveTab,
        selectedItemColor: AppColors.activeTab),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary, foregroundColor: Colors.white));

/// Dark theme
ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark),
        bodyMedium: TextStyle(fontSize: 16, color: AppColors.textDark)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary, foregroundColor: Colors.white),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavDark,
        unselectedItemColor: Colors.white,
        selectedItemColor: AppColors.primary),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundDark,
        foregroundColor: Colors.white));
