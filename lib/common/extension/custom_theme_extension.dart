import 'package:flutter/material.dart';

import '../utils/colours.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Colours.greyLight,
    blueColor: Colours.blueLight,
    langButtonBackgroundColor: Color(0xFFF7F8FA),
    languageButtonHighlightColor: Color(0xFFE8E8ED),
    authAppbarTextColor: Colours.whatsappGreenLight,
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Colours.whatsappGreenDark,
    greyColor: Colours.greyDark,
    blueColor: Colours.blueDark,
    langButtonBackgroundColor: Color(0xFF182229),
    languageButtonHighlightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langButtonBackgroundColor;
  final Color? languageButtonHighlightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langButtonBackgroundColor,
    this.languageButtonHighlightColor,
    this.authAppbarTextColor,
  });
  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langButtonBackgroundColor,
    Color? languageButtonHighlightColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langButtonBackgroundColor:
          langButtonBackgroundColor ?? this.langButtonBackgroundColor,
      languageButtonHighlightColor:
          languageButtonHighlightColor ?? this.languageButtonHighlightColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langButtonBackgroundColor: Color.lerp(
          langButtonBackgroundColor, other.langButtonBackgroundColor, t),
      languageButtonHighlightColor: Color.lerp(
          languageButtonHighlightColor, other.languageButtonHighlightColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
    );
  }
}
