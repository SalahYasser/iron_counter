import 'package:flutter/material.dart';

class AppColors {

  static const Gradient kPrimaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [kPurple3, kPurple7],
  );

  static const Color kPrimary = kPurple3;
  static const Color kPrimaryDark = kPurple6;

  // Purple Color Group
  static const Color kPurple1 = Color(0xFFE0AAFF);  // Lightest purple
  static const Color kPurple2 = Color(0xFFC77DFF);
  static const Color kPurple3 = Color(0xFFBA68C8);
  static const Color kPurple4 = Color(0xFF9D4EDD);
  static const Color kPurple5 = Color(0xFF7B2CBF);
  static const Color kPurple6 = Color(0xFF6A1B9A);  // Primary purple
  static const Color kPurple7 = Color(0xFF5A189A);
  static const Color kPurple8 = Color(0xFF4A148C);
  static const Color kPurple9 = Color(0xFF2D1B69);
  static const Color kPurple10 = Color(0xFF1A0B2E); // Darkest purple

  // Amber Color Group
  static const Color kAmber1 = Color(0xFFFFF8E1);  // Lightest amber
  static const Color kAmber2 = Color(0xFFFFECB3);
  static const Color kAmber3 = Color(0xFFFFE082);
  static const Color kAmber4 = Color(0xFFFFD54F);
  static const Color kAmber5 = Color(0xFFFFCA28);
  static const Color kAmber6 = Color(0xFFFFB300);  // Primary amber
  static const Color kAmber7 = Color(0xFFFFA000);
  static const Color kAmber8 = Color(0xFFFF8F00);
  static const Color kAmber9 = Color(0xFFFF6F00);
  static const Color kAmber10 = Color(0xFFFF4F00); // Darkest amber

  // Blue Color Group
  static const Color kBlue1 = Color(0xFFE3F2FD);  // Lightest blue
  static const Color kBlue2 = Color(0xFFBBDEFB);
  static const Color kBlue3 = Color(0xFF90CAF9);
  static const Color kBlue4 = Color(0xFF64B5F6);
  static const Color kBlue5 = Color(0xFF42A5F5);
  static const Color kBlue6 = Color(0xFF1E88E5);  // Primary blue
  static const Color kBlue7 = Color(0xFF1976D2);
  static const Color kBlue8 = Color(0xFF1565C0);
  static const Color kBlue9 = Color(0xFF0D47A1);
  static const Color kBlue10 = Color(0xFF092E52); // Darkest blue

  // Green Color Group
  static const Color kGreen1 = Color(0xFFE8F5E9);  // Lightest green
  static const Color kGreen2 = Color(0xFFC8E6C9);
  static const Color kGreen3 = Color(0xFFA5D6A7);
  static const Color kGreen4 = Color(0xFF81C784);
  static const Color kGreen5 = Color(0xFF66BB6A);
  static const Color kGreen6 = Color(0xFF4CAF50);  // Primary green
  static const Color kGreen7 = Color(0xFF43A047);
  static const Color kGreen8 = Color(0xFF388E3C);
  static const Color kGreen9 = Color(0xFF2E7D32);
  static const Color kGreen10 = Color(0xFF1B5E20); // Darkest green

  // Red Color Group
  static const Color kRed1 = Color(0xFFFFEBEE); // Lightest red
  static const Color kRed2 = Color(0xFFFFCDD2);
  static const Color kRed3 = Color(0xFFEF9A9A);
  static const Color kRed4 = Color(0xFFE57373);
  static const Color kRed5 = Color(0xFFEF5350);
  static const Color kRed6 = Color(0xFFF44336); // Primary red
  static const Color kRed7 = Color(0xFFE53935);
  static const Color kRed8 = Color(0xFFD32F2F);
  static const Color kRed9 = Color(0xFFC62828);
  static const Color kRed10 = Color(0xFFB71C1C); // Darkest red

  // Text Colors
  static const Color kTextPrimary = Color(0xFFE5E5E5);
  static Color kDisabledTextPrimary = Color(0xFFE5E5E5).withOpacity(0.7);
  static const Color kTextSecondary = Color(0xFFB0B0B0);
  static const Color kTextHint = Color(0xFF6C6C6C);

  static const Color kWhite = Color(0xFFFFFFFF);

  static const Color kBlack = Color(0xFF000000);
  static const Color kSurface = Color(0xFF1E1E1E);
  static const Color kSurfaceLight = Color(0xFF2C2C2C);


  // workout types colors
  static const Color kGym = Colors.amber;
  static final Color kCardio = Colors.blue;
  static const Color kLinks = Colors.green;
  static final Color kFoods = Colors.red;

  // Status & Utility Colors
  static const Color kSuccess = Color(0xFF4CAF50); // successful
  static const Color kWarning = Color(0xFFFF9800); // warnings
  static const Color kDanger = Color(0xFFF44336); // errors, deletion, or critical actions
  static const Color kDisabled = Color(0xFF333333); // disabled buttons/elements
}