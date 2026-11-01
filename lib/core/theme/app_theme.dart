import 'package:flutter/material.dart';
import 'package:ui_design/core/theme/app_colors.dart';


abstract final class AppTheme{

    static ThemeData get lighTheme{
        return ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: AppColors.background,

            textTheme: const TextTheme(
                headlineLarge: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                ),

                bodySmall: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary
                )
            )
        );
    }

    static TextStyle get Placeholder => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.placeholderText

    );
}