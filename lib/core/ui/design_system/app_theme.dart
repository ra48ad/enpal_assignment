import 'package:enpal_assignment/core/ui/design_system/colors.dart';
import 'package:enpal_assignment/core/ui/design_system/spacing.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    useMaterial3: true,
    cardTheme: CardTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        foregroundColor: WidgetStateProperty.all(AppColors.foreground),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: Spacing.xs,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Spacing.xs),
          ),
        ),
      ),
    ),
  );
}
