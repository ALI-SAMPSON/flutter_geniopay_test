import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class SubscriptionItem extends StatelessWidget {
  const SubscriptionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [

          Positioned(
            top: 30,
            right: 0, left: 0,
            child: Container(
              height: displayHeight(context) * 1,
              decoration: BoxDecoration(
                  color: AppColor.colorWhite,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

          Positioned(
            top: 0,
            right: 0, left: 0,
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      stops: [0.0, 1.0],
                      colors: [
                        Color(0xFF3EC9E7), Color(0xFF008AA7)
                      ])
              ),
              child: Center(child: CustomText(text: 'B', textColor: AppColor.colorWhite, fontSize: 50, fontFamily: AppFont.iBMPlexSansMedium,)),
            ),),
        ],
      ),
    );
  }
}
