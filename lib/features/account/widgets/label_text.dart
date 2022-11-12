import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class LabelText extends StatelessWidget {
  final String label;
  final String title;
  const LabelText({Key? key,required this.label, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label,
          fontSize: 16,
          textColor: AppColor.colorPrimary,
          fontFamily: AppFont.iBMPlexSansMedium,
        ),
        SizedBox(
          height: displayHeight(context) * 0.004,
        ),
        CustomText(
          text: title,
          textColor: AppColor.colorBlack,
          fontSize: 16,
        ),
      ],
    );
  }
}
