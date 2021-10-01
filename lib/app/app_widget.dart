import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_themes.dart';
import 'package:online_courses_app_concept/views/home/home_view.dart';
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
      initialRoute: '/my-course',
      routes: {
        '/': (context) => const HomeView(),
        '/my-course': (context) => const MyCourseView(),
      },
    );
  }
}
