import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;
  final Widget? textAlt;
  const ButtonWidget({
    Key? key,
    required this.text,
    this.height = 58,
    this.width = 280,
    this.onPressed,
    this.textAlt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: textAlt ??
            Text(
              text,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
      ),
    );
  }
}
