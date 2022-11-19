import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_app_bar.dart';
import 'package:flutter_geniopay_app/commons/custom_button.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/features/home/widgets/identity_item.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:get/get.dart';

class ProofIdentityPage extends StatelessWidget {
  const ProofIdentityPage({Key? key}) : super(key: key);

  //final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),

              SizedBox(
                height: displayHeight(context) * 0.15,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                          text: 'We need to verify\nyour ',
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColor.colorBlack,
                            fontFamily: AppFont.iBMPlexSansSemiBold,
                          ),
                          children: const [
                            TextSpan(
                              text: 'identity',
                              style: TextStyle(
                                fontSize: 25,
                                color: AppColor.colorBlack,
                                fontFamily: AppFont.iBMPlexSansRegular,
                              ),
                            ),
                          ])),
                ),
              ),

              // SizedBox(
              //   height: displayHeight(context) * 0.02,
              // ),

              Container(
                height: displayHeight(context) * 0.80,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: AppColor.colorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppDimen.borderRadius32),
                    topRight: Radius.circular(AppDimen.borderRadius32),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: displayHeight(context) * 0.03,
                      ),
                      IdentityItem(
                        title: 'Valid Government Issued ID\nDocument Scan',
                        subTitle: 'learn more',
                        icon: getIconPath(idIcon),
                      ),
                      SizedBox(
                        height: displayHeight(context) * 0.03,
                      ),
                      IdentityItem(
                        title: 'Proof of Residence Document\nScan',
                        subTitle: 'learn more',
                        icon: getIconPath(homeHeartIcon),
                      ),
                      SizedBox(
                        height: displayHeight(context) * 0.03,
                      ),
                      IdentityItem(
                        title:
                            'We will ask you to record a short\nvideo of yourself using the app',
                        icon: getIconPath(cameraMovieIcon),
                      ),

                      SizedBox(
                        height: displayHeight(context) * 0.06,
                      ),

                      // Botton text
                      CustomText(
                        text: 'Please prepare documents\nmentioned above!',
                        textColor: AppColor.colorPrimary,
                        fontSize: 18,
                        textAlign: TextAlign.center,
                        fontFamily: AppFont.iBMPlexSansMedium,
                      ),

                      SizedBox(
                        height: displayHeight(context) * 0.04,
                      ),

                      // Botton text
                      CustomText(
                        text:
                            'There may also be rare situations where we would require you to upload additional documents.',
                        textColor: AppColor.colorPrimary,
                        fontSize: 14,
                        textAlign: TextAlign.center,
                        fontFamily: AppFont.iBMPlexSansRegular,
                      ),

                      SizedBox(
                        height: displayHeight(context) * 0.04,
                      ),

                      // Send button
                      CustomButton(
                        text: 'CONTINUE',
                        textColor: AppColor.colorBlack,
                        fontFamily: AppFont.iBMPlexSansMedium,
                        onTap: () => Get.toNamed(Routes.HOME_PAGE),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
