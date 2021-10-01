import 'package:flutter/material.dart';
import 'package:online_courses_app_concept/app/app_colors.dart';
import 'package:online_courses_app_concept/views/utils/button_widget.dart';
import 'package:online_courses_app_concept/views/utils/circle_card_shape_painter.dart';
import 'package:online_courses_app_concept/views/utils/input_card_widget.dart';

class PaymentLargeView extends StatelessWidget {
  final BoxConstraints constraints;
  const PaymentLargeView({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: constraints.maxHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 42,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      color: AppColors.primary,
                      size: 30,
                    ),
                    style: Theme.of(context)
                        .elevatedButtonTheme
                        .style!
                        .copyWith(
                          backgroundColor: MaterialStateProperty.all(
                              AppColors.gray.withOpacity(0.15)),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                  ),
                ),
                const SizedBox(
                  width: 22,
                ),
                Text(
                  "Credit / Debit Card",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 327,
                        maxHeight: 214,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                  "Visa",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                                const Center(
                                  child: Text(
                                    "4242  4242  4242 4242",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Spacer(
                                  flex: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "LESLEE HARRON",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "04/22",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 214,
                            width: 327,
                            child: ClipRRect(
                              child: CustomPaint(
                                painter: CardCicleShapePainter(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/images/take_a_photo.png",
                        height: 29,
                        width: 34,
                      ),
                      style: Theme.of(context)
                          .elevatedButtonTheme
                          .style!
                          .copyWith(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                  width: 350,
                  height: 400,
                  child: Column(
                    children: [
                      const InputCardWidget(
                        label: "Name on card",
                        initialValue: "Leslee Harron",
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const InputCardWidget(
                        label: "Card number",
                        initialValue: "4242 4242  4242  4242",
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Expanded(
                            child: InputCardWidget(
                              label: "Expiry date",
                              initialValue: "04/22",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: InputCardWidget(
                              label: "CVC",
                              initialValue: "474",
                              suffixIcon: ElevatedButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "assets/images/hint.png",
                                  height: 26,
                                  width: 31,
                                ),
                                style: Theme.of(context)
                                    .elevatedButtonTheme
                                    .style!
                                    .copyWith(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      shadowColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const ButtonWidget(
                        text: "Use this card",
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
