import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_sizes.dart';
import 'package:online_courses_app_concept/views/utils/button_widget.dart';
import 'package:online_courses_app_concept/views/utils/course_button_widget.dart';
import 'package:online_courses_app_concept/views/utils/pizza_shape_painter.dart';
import 'package:online_courses_app_concept/views/utils/rrect_ang_shape_paint.dart';
import 'package:online_courses_app_concept/views/utils/statistics_widget.dart';

class MyCourseLargeView extends StatelessWidget {
  final BoxConstraints constraints;
  const MyCourseLargeView({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: constraints.maxHeight,
            width: AppSizes.tabletSize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Your courses",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      CourseButtonWidget(
                        image: "assets/images/figma.png",
                        title: "UI/UX on Figma",
                        author: "by Christopher D.",
                        painter: PizzaShapePainter(),
                      ),
                      CourseButtonWidget(
                        image: "assets/images/flutter.png",
                        title: "Flutter workshop",
                        author: "by Katalina C.",
                        painter: RRectAngShapePainter(),
                      ),
                      CourseButtonWidget(
                        image: "assets/images/figma.png",
                        title: "UI/UX on Figma",
                        author: "by Christopher D.",
                        painter: PizzaShapePainter(),
                      ),
                      CourseButtonWidget(
                        image: "assets/images/figma.png",
                        title: "UI/UX on Figma",
                        author: "by Christopher D.",
                        painter: PizzaShapePainter(),
                      ),
                      CourseButtonWidget(
                        image: "assets/images/figma.png",
                        title: "UI/UX on Figma",
                        author: "by Christopher D.",
                        painter: PizzaShapePainter(),
                      ),
                      CourseButtonWidget(
                        image: "assets/images/figma.png",
                        title: "UI/UX on Figma",
                        author: "by Christopher D.",
                        painter: PizzaShapePainter(),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Personal statistics",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StatisticsWidget(
                      title: "18",
                      subtitle: "Courses completed",
                    ),
                    StatisticsWidget(
                      title: "3",
                      subtitle: "Courses in progress",
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Learn more way faster",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ButtonWidget(
                      text: "",
                      textAlt: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Go Pro Now ',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    fontWeight: FontWeight.w900,
                                  ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "and save 80%",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
