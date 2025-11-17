import 'package:flutter/material.dart';
import 'package:flutter_create_madshop_ui_sopina/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
      ),
    );
  }
}