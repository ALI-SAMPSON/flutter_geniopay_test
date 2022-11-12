import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/svg.dart';

class TransferCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String? text3;
  final String? text4;
  final String icon1;
  final String? icon2;
  final String? icon3;

  const TransferCard({
    Key? key,
    required this.text1,
    required this.text2,
    this.text3,
    this.text4,
    required this.icon1,
    this.icon2,
    this.icon3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: AppColor.colorPrimaryLight,
                child: SvgPicture.asset(
                  icon1,
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: displayWidth(context) * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      icon2 == null ? SizedBox() : SvgPicture.asset(icon2!),
                      icon2 == null
                          ? SizedBox()
                          : SizedBox(
                              width: displayWidth(context) * 0.02,
                            ),
                      CustomText(
                        text: text1,
                        textColor: AppColor.colorBlack,
                        fontFamily: AppFont.iBMPlexSansSemiBold,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      icon3 == null
                          ? SizedBox()
                          : SvgPicture.asset(icon3!, width: 14, height: 14),
                      icon3 == null
                          ? SizedBox()
                          : SizedBox(
                              width: displayWidth(context) * 0.01,
                            ),
                      text2.isEmpty
                          ? SizedBox()
                          : CustomText(
                              text: text2,
                              textColor: AppColor.colorBlack,
                              fontFamily: AppFont.iBMPlexSansLight,
                            ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              text3!.isEmpty && text4!.isEmpty
                  ? SizedBox()
                  : RichText(
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: text3 ?? '',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.colorPrimary,
                          fontFamily: AppFont.iBMPlexSansRegular,
                        ),
                        children: [
                          TextSpan(
                            text: text4 ?? '',
                            style: TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough,
                                color: AppColor.colorBlack,
                                fontFamily: AppFont.iBMPlexSansLight),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                width: displayWidth(context) * 0.065,
              ),
              SvgPicture.asset(getIconPath(playIcon)),
            ],
          ),
        ],
      ),
    );
  }
}
