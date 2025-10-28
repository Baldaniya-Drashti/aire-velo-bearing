import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData createTheme({required Brightness brightness}) {
    return ThemeData(
      fontFamily: 'Inter',
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: Colors.black87,
      primaryColorDark: Colors.black87,
      dividerTheme: DividerThemeData(
        color: AppColors.black.withValues(alpha: 0.20),
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(brightness: Brightness.light);

  static ThemeData get darkTheme => createTheme(brightness: Brightness.dark);
}
