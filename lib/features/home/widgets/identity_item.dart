import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/svg.dart';

class IdentityItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String icon;

  const IdentityItem({
    Key? key, required this.title, this.subTitle, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColor.colorPrimaryLight,
            child: SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: displayWidth(context) * 0.05,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title,
                  textColor: AppColor.colorBlack,
                  fontFamily: AppFont.iBMPlexSansRegular,
                ),
                subTitle == null ? SizedBox() : Text(
                  subTitle ?? '', style: TextStyle(
                    color: AppColor.colorPrimary, fontSize: 16, decoration: TextDecoration.underline,
                    fontFamily: AppFont.iBMPlexSansRegular
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
