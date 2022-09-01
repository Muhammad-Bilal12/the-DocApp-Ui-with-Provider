import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class CustomAuthBtn extends StatelessWidget {
  const CustomAuthBtn({
    Key? key,
    required this.btnText,
    required this.ontap,
  }) : super(key: key);

  final String btnText;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Ink(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: ColorConstant.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(color: ColorConstant.whiteColor),
          ),
        ),
      ),
    );
  }
}
