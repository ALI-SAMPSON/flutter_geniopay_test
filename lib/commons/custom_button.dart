import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? fontFamily;
  final Function() onTap;

  const CustomButton({
    Key? key,
    required this.text,
    this.backgroundColor = AppColor.colorYellowLight,
    required this.onTap,
    this.textColor = AppColor.textColorLight,
    this.fontFamily = AppFont.iBMPlexSansLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimen.borderRadius)),
          backgroundColor: backgroundColor,
          minimumSize: Size(displayWidth(context), 47)),
      child: CustomText(
        text: text,
        fontSize: 16,
        fontFamily: fontFamily,
        textColor: textColor,
      ),
    );
  }
}
