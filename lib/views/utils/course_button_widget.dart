import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_colors.dart';

class CourseButtonWidget extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final CustomPainter? painter;

  const CourseButtonWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    this.painter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 135,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    overlayColor: MaterialStateProperty.all(AppColors.primary),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                    shadowColor: MaterialStateProperty.all(AppColors.primary),
                    foregroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                  ),
              child: SizedBox(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 135,
                      height: 135,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CustomPaint(
                          painter: painter,
                          size: const Size(100, 100),
                        ),
                      ),
                    ),
                    Image.asset(
                      image,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            AutoSizeText(
              title,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
              maxFontSize: Theme.of(context).textTheme.headline6!.fontSize!,
              minFontSize: 11,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            AutoSizeText(
              author,
              style: Theme.of(context).textTheme.subtitle2!,
              maxFontSize: Theme.of(context).textTheme.subtitle2!.fontSize!,
              minFontSize: 10,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
