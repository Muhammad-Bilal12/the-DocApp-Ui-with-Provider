import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class customTextFeild extends StatelessWidget {
  const customTextFeild({
    Key? key,
    required this.hintText,
    required this.icon,
    this.isPassword = false,
    this.obsecuareText = false,
  }) : super(key: key);

  final String hintText;
  final Icon icon;
  final bool isPassword;
  final bool obsecuareText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecuareText,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: ColorConstant.secondaryColor,
        prefixIcon: icon,
        suffixIcon:
            isPassword ? const Icon(Icons.visibility) : const Icon(null),
        hintText: hintText,
      ),
    );
  }
}
