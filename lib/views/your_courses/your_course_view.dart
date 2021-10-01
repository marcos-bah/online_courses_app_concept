import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:online_courses_app_concept/app/app_sizes.dart';
import 'package:online_courses_app_concept/views/your_courses/your_course_large_view.dart';
import 'package:online_courses_app_concept/views/your_courses/your_course_small_view.dart';

class MyCourseView extends StatelessWidget {
  const MyCourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > AppSizes.tabletSize) {
          return MyCourseLargeView(constraints: constraints);
        } else {
          return MyCourseSmallView(constraints: constraints);
        }
      },
    );
  }
}
