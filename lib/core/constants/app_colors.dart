import 'package:flutter/material.dart';

class AppColors {
  // --- Original Definitions (Preserved for compatibility) ---

  static const Color primary = Color(0xFFFFCC00);
  static const Color primaryDark = Color(0xFFC7A200);
  static const Color accent = Color(0xFFE5E5E5);

  static const Color background = Color(0xFF000000);
  static const Color surface = Color(0xFF1E1E1E);

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = accent;


  // --- New, Expanded Definitions (Added for clarity and completeness) ---
  // Using 'k' prefix to distinguish and avoid conflicts with original names

  // Brand Colors
  static const Color kPrimary = primary; // Alias to original primary
  static const Color kPrimaryDark = primaryDark; // Alias to original primaryDark
  static const Color kAccent = accent; // Alias to original accent

  // Background & Surface
  static const Color kBlack = Color(0xFF000000);
  static const Color kBackground = background; // Alias to original background
  static const Color kSurface = surface; // Alias to original surface
  static const Color kSurfaceLight = Color(0xFF2C2C2C); // Slightly lighter surface for distinction

  // Text Colors
  static const Color kTextPrimary = textPrimary; // Alias to original textPrimary
  static const Color kTextSecondary = Color(0xFFB0B0B0); // Lighter gray for secondary text/hints
  static const Color kTextHint = Color(0xFF6C6C6C); // Dark gray for hints and disabled text

  // Status & Utility Colors
  static const Color kSuccess = Color(0xFF4CAF50); // Green for successful actions/completions
  static const Color kWarning = Color(0xFFFF9800); // Orange/Amber for warnings
  static const Color kDanger = Color(0xFFF44336); // Red for errors, deletion, or critical actions
  static const Color kDisabled = Color(0xFF333333); // Very dark gray for disabled buttons/elements
}