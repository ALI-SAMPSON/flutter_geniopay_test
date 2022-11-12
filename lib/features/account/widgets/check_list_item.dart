import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class CheckListItem extends StatelessWidget {
  final bool value;
  final dynamic onChanged;
  final String? text1;
  final String? text2;
  final String? text3;

  const CheckListItem({
    Key? key,
    required this.value,
    required this.onChanged,
    this.text1,
    this.text2,
    this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: RichText(
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
              text: TextSpan(
                  text: text1 ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColor.colorBlack,
                    fontFamily: AppFont.iBMPlexSansLight,
                  ),
                  children: [
                    TextSpan(
                      text: text2 ?? '',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.colorPrimary,
                        fontFamily: AppFont.iBMPlexSansMedium,
                      ),
                    ),
                    TextSpan(
                      text: text3 ?? '',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: AppFont.iBMPlexSansLight,
                        color: AppColor.colorBlack,
                      ),
                    ),
                  ])),
        ),
        SizedBox(
          width: displayWidth(context) * 0.002,
        ),
        Transform.scale(
          scale: 1.9,
          child: Checkbox(
            activeColor: AppColor.colorPrimary,
            value: value,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
