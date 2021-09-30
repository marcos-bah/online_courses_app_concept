import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final void Function()? onPressed;
  const ButtonWidget({
    Key? key,
    required this.text,
    this.height = 60,
    this.width = 280,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
