import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class RowText extends StatelessWidget {
  final String text1;
  final String? text2;
  final String? text3;
  final String text4;
  const RowText({Key? key, required this.text1, this.text2, this.text3, required this.text4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: text1,
                fontSize: 17,
                textAlign: TextAlign.start,
                textColor: AppColor.colorBlack,
                fontFamily: AppFont.iBMPlexSansMedium,
              ),
              (text2 == null || text2 == '') ? SizedBox() : SizedBox(
                height: displayHeight(context) * 0.005,
              ),
              (text2 == null || text2 == '') ? SizedBox() : CustomText(
                text: text2 ?? '',
                fontSize: 17,
                textAlign: TextAlign.start,
                textColor: Colors.black54,
                fontFamily: AppFont.iBMPlexSansLight,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            text3 == null ? SizedBox() : CustomText(
              text: text3 ?? '',
              fontSize: 14,
              textAlign: TextAlign.start,
              textColor: AppColor.colorBlack.withOpacity(0.4),
              fontFamily: AppFont.iBMPlexSansRegular,
            ),
            CustomText(
              text: text4,
              fontSize: 17,
              textAlign: TextAlign.start,
              textColor: AppColor.colorBlack,
              fontFamily: AppFont.iBMPlexSansMedium,
            ),
          ],
        ),
      ],
    );
  }
}
