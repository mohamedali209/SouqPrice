import 'package:flutter/material.dart';
import 'package:souq/core/utils/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'لمتابعة اسعار الذهب و الفضة لحظة ب لحظة في السوق المصري ',
              style: Styles.thtahln,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
