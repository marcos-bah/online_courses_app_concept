import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;

  final void Function()? onPressed;
  const TextButtonWidget({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
