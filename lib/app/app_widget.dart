import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_themes.dart';
import 'package:online_courses_app_concept/views/home/home_view.dart';
import 'package:online_courses_app_concept/views/payment/payment_view.dart';
import 'package:online_courses_app_concept/views/your_courses/your_course_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Courses App Concept',
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/your-courses': (context) => const MyCourseView(),
        '/payment': (context) => const PaymentView(),
      },
    );
  }
}
