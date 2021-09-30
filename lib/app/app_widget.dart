import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_courses_app_concept/app/app_colors.dart';
import 'package:online_courses_app_concept/views/home/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Courses App Concept',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: AppColors.primary,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 17,
            color: Colors.white,
          ),
          headline5: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: AppColors.secondary,
          ),
          headline6: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.gray30,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primary,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primary),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
      },
    );
  }
}
