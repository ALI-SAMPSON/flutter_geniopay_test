import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: false,
      maxLines: maxLines,
      decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimen.borderRadius),
            borderSide: BorderSide(
              color: AppColor.colorPrimary,
              width: AppDimen.borderWidth,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppDimen.borderRadius),
            borderSide: BorderSide(
                color: AppColor.colorPrimary, width: AppDimen.borderWidth),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: AppFont.iBMPlexSansLight,
              fontWeight: FontWeight.w300,
              color: AppColor.colorBlack,
              fontSize: 14)),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null;
      },
    );
  }
}
