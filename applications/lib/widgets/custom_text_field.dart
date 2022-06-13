import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahabat_tani/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType? inputType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final VoidCallback? onEditingComplete;
  final void Function(String)? onSubmitted;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.focusNode,
      this.inputType,
      this.textInputAction,
      this.obscureText,
      this.hintText,
      this.onEditingComplete,
      this.onSubmitted,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      decoration: InputDecoration(
        enabled: true,
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: borderTextField, width: 1.0),
        ),
        hintStyle: GoogleFonts.workSans(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 10.0,
        ),
      ),
      obscureText: obscureText ?? false,
      keyboardType: inputType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.done,
    );
  }
}
