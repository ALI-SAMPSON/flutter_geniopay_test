import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/models/invite.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class InviteItem extends StatelessWidget {
  final Invite invite;
  const InviteItem({Key? key, required this.invite,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(top: 6, bottom: 6, right: 25, left: 25.0),
      width:  displayWidth(context) - 90,
      decoration: BoxDecoration(
        color: invite.color,
        borderRadius: BorderRadius.circular(AppDimen.borderRadius,),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   width: displayWidth(context) * 0.02,
          // ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: invite.title,
                  textColor: AppColor.colorWhite,
                  fontSize: 16.0,
                  fontFamily: AppFont.iBMPlexSansMedium,
                ),
                SizedBox(
                  height: displayHeight(context) * 0.003,
                ),
                CustomText(
                  text:  invite.subTitle,
                  textColor: AppColor.colorWhite,
                  fontSize: 14.0,
                  fontFamily: AppFont.iBMPlexSansRegular,
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(invite.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
