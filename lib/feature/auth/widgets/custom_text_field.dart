import 'package:flutter/material.dart';
import 'package:whatsapp_clogne/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clogne/common/utils/colours.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.controller,
    this.hintText,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final String? prefixText;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        isDense: true,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: context.theme.greyColor),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colours.whatsappGreenLight, width: 2),
        ),
      ),
    );
  }
}
