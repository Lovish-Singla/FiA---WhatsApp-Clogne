import 'package:flutter/material.dart';
import 'package:whatsapp_clogne/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clogne/common/utils/colours.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langButtonBackgroundColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.languageButtonHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: Colours.whatsappGreenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'English',
                style: TextStyle(
                  color: Colours.whatsappGreenDark,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colours.whatsappGreenDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
