import 'package:flutter/material.dart';

abstract class AppColors {
  static const secondary = Color(0xFF0057FF);
  static const accent = Color(0xFF1138F7);
  static const textDark = Color(0xFF53585A);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textField = Color(0xffF3F3F3);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF303334);
  static const formField = Color(0xFFE5EEFF);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
    brightness: Brightness.light,
    accentColor: accentColor,
    visualDensity: visualDensity,
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(bodyColor: AppColors.textDark),
    backgroundColor: _LightColors.background,
    scaffoldBackgroundColor: _LightColors.background,
    cardColor: _LightColors.card,
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(color: AppColors.textDark),
    ),
    iconTheme: const IconThemeData(color: AppColors.iconDark),
  );

}
