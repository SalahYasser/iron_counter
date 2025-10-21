import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon({
    super.key,
    required this.gradient,
    required this.icon,
    this.size,
  });

  final Gradient gradient;
  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width.w, bounds.height.h),
      ),
      child: Icon(icon, size: size),
    );
  }
}
