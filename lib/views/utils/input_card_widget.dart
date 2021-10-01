import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_colors.dart';

class InputCardWidget extends StatelessWidget {
  final String label;
  final String? initialValue;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  const InputCardWidget(
      {Key? key,
      required this.label,
      this.initialValue,
      this.onChanged,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w100,
            color: AppColors.gray,
          ),
        ),
        TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: AppColors.primary,
          ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: AppColors.gray,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: AppColors.gray,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
