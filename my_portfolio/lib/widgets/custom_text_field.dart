import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, 
    this.controller, 
    this.maxLines = 1, 
    this.hintText,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(
        color: CustomColor.scaffoldBg,
      ),
      cursorColor: CustomColor.accentColor2,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: CustomColor.scaffoldBg,
        ),
        fillColor: CustomColor.primaryColor,
        filled: true,
        border: getInputBorder,
        enabledBorder: getInputBorder,
        focusedBorder: getInputBorder,
      ),
    );
  }
}
