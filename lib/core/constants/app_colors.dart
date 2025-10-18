import 'package:flutter/material.dart';

class AppColors {

  static const Gradient kPrimaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF4A148C), Color(0xFFBA68C8)],
  );

  static const Color kPrimary = Color(0xFFBA68C8);
  static const Color kPrimaryDark = Color(0xFF6A1B9A);

  static const Color kTextPrimary = Color(0xFFE5E5E5);
  static const Color textSecondary = Color(0xFFFFFFFF);

  static const Color kBackground = Color(0xFF000000);
  static const Color kSurface = Color(0xFF1E1E1E);

  static const Color kBlack = Color(0xFF000000);
  static const Color kSurfaceLight = Color(0xFF2C2C2C);

  // workout types colors
  static const Color kGym = Colors.amber;
  // static final Color kCardio = Colors.purple[400]!;
  static final Color kCardio = Colors.blue;
  static const Color kLinks = Colors.green;
  // static final Color kFoods = Colors.red[400]!;
  static final Color kFoods = Colors.red[500]!;

  // Text Colors
  static const Color kTextSecondary = Color(0xFFB0B0B0);
  static const Color kTextHint = Color(0xFF6C6C6C);

  // Status & Utility Colors
  static const Color kSuccess = Color(0xFF4CAF50); // Green for successful actions/completions
  static const Color kWarning = Color(0xFFFF9800); // Orange/Amber for warnings
  static const Color kDanger = Color(0xFFF44336); // Red for errors, deletion, or critical actions
  static const Color kDisabled = Color(0xFF333333); // Very dark gray for disabled buttons/elements
}