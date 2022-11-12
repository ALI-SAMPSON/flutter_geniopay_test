import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class AddCountryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Function() onTap;

  const AddCountryButton({
    Key? key,
    required this.text,
    this.icon=CupertinoIcons.add,
    this.iconColor=AppColor.colorBlack,
    this.backgroundColor=AppColor.colorPrimaryLight,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 24,
            backgroundColor: backgroundColor,
            child: Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
          ),
        ),
        SizedBox(
          height: displayHeight(context) * 0.01,
        ),
        CustomText(
          text: text,
          textColor: iconColor,
          fontSize: 14,
          fontFamily: AppFont.iBMPlexSansLight,
        ),
      ],
    );
  }
}
