import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData themeDataLight = ThemeData(
  scaffoldBackgroundColor: AppColors.bg,
  primarySwatch: Colors.blue,
  fontFamily: GoogleFonts.poppins().fontFamily,
  primaryColor: AppColors.primary,
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    subtitle2: const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline1: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.primary,
    ),
    headline4: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 17,
      color: Colors.white,
    ),
    headline5: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16,
      color: AppColors.secondary,
    ),
    headline6: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.gray30,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: AppColors.primary,
    textTheme: ButtonTextTheme.primary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.primary,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white.withOpacity(0.2),
    selectedIconTheme: const IconThemeData(size: 30),
    unselectedIconTheme: const IconThemeData(size: 30),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    ),
  ),
);
