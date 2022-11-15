import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/features/subscription/widgets/row_text.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class PlanItem extends StatelessWidget {
  final double height;

  const PlanItem({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned(
            top: 30,
            right: 0,
            left: 0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              height: height - 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.colorPrimary.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset(3, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // Plan details
                    SizedBox(
                      height: displayHeight(context) * 0.03,
                    ),
                    CustomText(
                      text: 'Basic Plan',
                      fontSize: 24,
                      textAlign: TextAlign.center,
                      textColor: AppColor.colorBlack,
                      fontFamily: AppFont.iBMPlexSansBold,
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.01,
                    ),
                    CustomText(
                      text:
                          'Send €200 (or more) per\n month and get coverage for:',
                      fontSize: 18,
                      textAlign: TextAlign.center,
                      textColor: AppColor.colorPrimary,
                      fontFamily: AppFont.iBMPlexSansMedium,
                    ),

                    SizedBox(
                      height: displayHeight(context) * 0.04,
                    ),

                    // plan features
                    RowText(
                        text1:
                            'Accidental death,\ndismemberment, or\nparalysis',
                        text2: '',
                        text3: 'Up to',
                        text4: '€5,000'),

                    SizedBox(
                      height: displayHeight(context) * 0.01,
                    ),

                    Divider(
                      thickness: AppDimen.borderWidth,
                      color: AppColor.colorPrimary.withOpacity(0.2),
                    ),

                    SizedBox(
                      height: displayHeight(context) * 0.01,
                    ),

                    RowText(
                        text1: 'Temporary total\ndisability',
                        text2: '(caused by an accident)',
                        text4: 'N/A'),

                    SizedBox(
                      height: displayHeight(context) * 0.01,
                    ),

                    Divider(
                      thickness: AppDimen.borderWidth,
                      color: AppColor.colorPrimary.withOpacity(0.2),
                    ),

                    SizedBox(
                      height: displayHeight(context) * 0.01,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'In case of death due to an accident:',
                        fontSize: 17,
                        textAlign: TextAlign.start,
                        textColor: AppColor.colorPrimary,
                        fontFamily: AppFont.iBMPlexSansRegular,
                      ),
                    ),

                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),

                    RowText(text1: 'Funeral costs', text2: '', text4: 'N/A'),

                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'OR',
                        fontSize: 17,
                        textAlign: TextAlign.start,
                        textColor: Colors.black54,
                        fontFamily: AppFont.iBMPlexSansLight,
                      ),
                    ),

                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),

                    RowText(text1: 'Reparation', text2: '', text4: 'N/A'),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      stops: const [0.0, 1.0],
                      colors: const [Color(0xFF3EC9E7), Color(0xFF008AA7)])),
              child: Center(
                  child: CustomText(
                text: 'B',
                textAlign: TextAlign.center,
                textColor: AppColor.colorWhite,
                fontSize: 45,
                fontFamily: AppFont.iBMPlexSansMedium,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
