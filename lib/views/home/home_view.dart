import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_sizes.dart';

import 'home_large_view.dart';
import 'home_small_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > AppSizes.tabletSize) {
          return const HomeLargeView();
        } else {
          return const HomeSmallView();
        }
      },
    );
  }
}
