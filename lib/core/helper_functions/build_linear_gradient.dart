import 'package:flutter/material.dart';

LinearGradient buildLinearGradient({
  required List<Color> colors,
}) {
  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: colors,
  );
}