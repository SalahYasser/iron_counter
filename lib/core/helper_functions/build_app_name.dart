import 'package:flutter/material.dart';
import 'package:iron_counter/features/splash/presentation/views/widgets/app_name_text.dart';

Widget buildAppName(double opacity) {
  return AnimatedOpacity(
    duration: const Duration(milliseconds: 400),
    curve: Curves.easeInOut,
    opacity: opacity,
    child: const AppNameText(),
  );
}