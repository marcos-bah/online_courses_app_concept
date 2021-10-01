import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_sizes.dart';
import 'package:online_courses_app_concept/views/payment/payment_large_view.dart';
import 'package:online_courses_app_concept/views/payment/payment_small_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > AppSizes.tabletSize) {
          return PaymentLargeView(constraints: constraints);
        } else {
          return PaymentSmallView(constraints: constraints);
        }
      },
    );
  }
}
