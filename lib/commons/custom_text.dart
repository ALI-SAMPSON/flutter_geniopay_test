// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final String? fontFamily;
  final Color? textColor;
  final TextAlign? textAlign;

  const CustomText({
    required this.text,
    this.fontSize = 16,
    this.fontFamily = AppFont.iBMPlexSansRegular,
    this.textColor = AppColor.colorBlack,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: textColor,
      ),
    );
  }
}
