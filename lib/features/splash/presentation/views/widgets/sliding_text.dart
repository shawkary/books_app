import 'package:flutter/material.dart';

Widget slidingText(slidingAnimation) => AnimatedBuilder(
  animation: slidingAnimation,
  builder: (context, _) {
    return SlideTransition(
      position: slidingAnimation,
      child: const Text(
        'Read Free Books',
        textAlign: TextAlign.center,
      ),
    );
  },
);