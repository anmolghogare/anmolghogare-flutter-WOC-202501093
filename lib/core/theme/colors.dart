import 'package:flutter/material.dart';

class AppColors {
  // Backgrounds
  static const Color background = Color(0xFF0B0B0F);
  static const Color surface = Color(0xFF12121A);

  // Text
  static const Color primaryText = Colors.white;
  static const Color secondaryText = Color(0xFFB0B0C3);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF8B5CF6), // Purple
      Color(0xFFF97316), // Orange
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Borders & dividers
  static const Color divider = Color(0xFF1F1F2E);
}
