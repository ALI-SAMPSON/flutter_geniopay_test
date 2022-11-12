import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/svg.dart';

class CircleButton extends StatelessWidget {
  final String text;
  final String icon;
  const CircleButton({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: AppColor.colorPrimary,
            borderRadius: BorderRadius.circular(25),),
          child: SvgPicture.asset(icon, color: AppColor.colorWhite,
            width: 24, height: 24,),
        ),
        SizedBox(
          height: displayHeight(context) * 0.002,
        ),
        CustomText(
          text: text,
          textColor: AppColor.colorPrimary,
          fontSize: 12.0,
          fontFamily: AppFont.iBMPlexSansRegular,
        ),
      ],
    );
  }
}
