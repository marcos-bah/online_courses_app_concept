import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/views/utils/button_widget.dart';
import 'package:online_courses_app_concept/views/utils/text_button_widget.dart';

class HomeSmallView extends StatelessWidget {
  const HomeSmallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              "assets/images/bust.png",
              height: 350,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "Hey Leslee,\nthere’s a new course about Figma",
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "Find out how our new matching tool can help you learn another way",
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 6,
            ),
            const ButtonWidget(text: "Discover the course"),
            const Spacer(
              flex: 2,
            ),
            const TextButtonWidget(text: "Not now"),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
