import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.gradient,
    required this.text,
    this.style,
    this.textAlign,
  });

  final Gradient gradient;
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width.w, bounds.height.h),
      ),
      child: Text(text, style: style, textAlign: textAlign),
    );
  }
}
