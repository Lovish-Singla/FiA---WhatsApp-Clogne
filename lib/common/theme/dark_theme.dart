import 'package:flutter/material.dart';
import 'package:whatsapp_clogne/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clogne/common/utils/colours.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: Colours.backgroundDark,
    colorScheme: const ColorScheme.dark(
      background: Colours.backgroundDark,
    ),
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.whatsappGreenDark,
        foregroundColor: Colours.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
