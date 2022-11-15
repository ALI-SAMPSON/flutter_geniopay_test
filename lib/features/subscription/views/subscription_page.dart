import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_app_bar.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/controllers/registration_controller.dart';
import 'package:flutter_geniopay_app/features/subscription/widgets/subscription_carousel.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:get/get.dart';

class SubscriptionPage extends StatelessWidget {
  SubscriptionPage({Key? key}) : super(key: key);

  // initialize registration controller
  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(controller.overlayStyle(AppColor.colorPrimaryLight));
    return Scaffold(
      backgroundColor: AppColor.colorPrimaryLight,
      appBar: CustomAppBar(
        title: '',
        backgroundColor: AppColor.colorPrimaryLight,
        backIcon: getIconPath(backIcon),
        onTap: () => Get.back(),
      ),
      body: SizedBox(
        height: displayHeight(context),
        width: displayWidth(context),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: displayHeight(context) * 0.12,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomText(
                    text:
                        'The more money you send, the \nbetter your insurance gets',
                    fontSize: 18,
                    textAlign: TextAlign.center,
                    textColor: AppColor.colorPrimary,
                    fontFamily: AppFont.iBMPlexSansMedium,
                  ),
                ),
              ),
              // PlanItem(
              //   height: displayHeight(context) * 0.68,
              // ),
              SubscriptionCarousel(),
              SizedBox(
                height: displayHeight(context) * 0.0,
              ),
              SizedBox(
                height: displayHeight(context) * 0.20,
                child: Column(
                  children: [
                    // Terms & Conditions text
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.TRANSFER_PAGE),
                      child: RichText(
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(
                          text: 'Terms & Conditions apply, click ',
                          style: TextStyle(
                            fontSize: 17,
                            color: AppColor.colorBlack,
                            fontFamily: AppFont.iBMPlexSansRegular,
                            fontWeight: FontWeight.w500,
                          ),
                          children: const [
                            TextSpan(
                              text: 'here',
                              style: TextStyle(
                                fontSize: 17,
                                color: AppColor.colorPrimary,
                                decoration: TextDecoration.underline,
                                fontFamily: AppFont.iBMPlexSansRegular,
                              ),
                            ),
                            TextSpan(
                              text: ' for more',
                              style: TextStyle(
                                fontSize: 17,
                                color: AppColor.colorBlack,
                                fontFamily: AppFont.iBMPlexSansRegular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
