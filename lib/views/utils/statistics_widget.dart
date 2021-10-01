import 'package:flutter/material.dart';

class StatisticsWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const StatisticsWidget(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: '$title\n',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 46,
                fontWeight: FontWeight.w800,
              ),
          children: <TextSpan>[
            TextSpan(
              text: subtitle,
              style: Theme.of(context).textTheme.bodyText2!,
            ),
          ],
        ),
      ),
    );
  }
}
