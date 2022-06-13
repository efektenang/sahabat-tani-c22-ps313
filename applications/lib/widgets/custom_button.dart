import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahabat_tani/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final TextStyle? labelStyle;
  final EdgeInsets? contentPadding;

  const CustomButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.contentPadding,
      this.labelStyle,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: labelStyle ??
            GoogleFonts.workSans(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
      ),
      style: ElevatedButton.styleFrom(
          primary: backgroundColor ?? colorPrimary,
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: 16.0)),
    );
  }
}
