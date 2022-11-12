import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/bindings/init_controller.dart';
import 'package:flutter_geniopay_app/commons/country_list_picker.dart';
import 'package:flutter_geniopay_app/commons/custom_app_bar.dart';
import 'package:flutter_geniopay_app/commons/custom_button.dart';
import 'package:flutter_geniopay_app/commons/custom_fields.dart';
import 'package:flutter_geniopay_app/commons/custom_text_field.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/controllers/registration_controller.dart';
import 'package:flutter_geniopay_app/features/account/widgets/add_country_button.dart';
import 'package:flutter_geniopay_app/features/account/widgets/check_list_item.dart';
import 'package:flutter_geniopay_app/features/account/widgets/label_text.dart';
import 'package:flutter_geniopay_app/features/home/widgets/currency_drop_down.dart';
import 'package:flutter_geniopay_app/features/home/widgets/transfer_card.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TransfersPage extends StatelessWidget {
  TransfersPage({Key? key}) : super(key: key);

  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'International transfer',
        backIcon: getIconPath(closeIcon),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: () => Get.back(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// introduction text

              Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(getIconPath(addCalendarIcon))),

              SizedBox(
                height: displayHeight(context) * 0.03,
              ),

              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: AppColor.colorWhite,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomText(
                              text: 'You send from Poland',
                              fontSize: 10,
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.015,
                            ),
                            CurrencyDropDown(
                                image: getImagePath(usFlagImage),
                                currency: 'USD '),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(
                              text: '1 USD = 0.94 EUR',
                              fontSize: 12,
                              fontFamily: AppFont.iBMPlexSansLight,
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.015,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                CustomText(
                                  text: '\$',
                                  fontSize: 18,
                                  fontFamily: AppFont.iBMPlexSansMedium,
                                ),
                                CustomText(
                                  text: '1,000.00',
                                  fontSize: 25,
                                  fontFamily: AppFont.iBMPlexSansMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColor.colorPrimary,
                          radius: 12,
                          child: SvgPicture.asset(getIconPath(transferIcon)),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: AppDimen.borderWidth,
                            color: AppColor.colorPrimary.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.005,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomText(
                        text: 'They receive in Italy',
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CurrencyDropDown(
                            image: getImagePath(usFlagImage), currency: 'USD '),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            CustomText(
                              text: '€',
                              fontSize: 18,
                              textColor: AppColor.colorPrimary,
                              fontFamily: AppFont.iBMPlexSansMedium,
                            ),
                            CustomText(
                              text: '935.34',
                              fontSize: 25,
                              textColor: AppColor.colorPrimary,
                              fontFamily: AppFont.iBMPlexSansSemiBold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: displayHeight(context) * 0.03,
              ),

              // Receiver section
              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                    text: 'Receiver',
                    fontSize: 18,
                    textColor: AppColor.colorPrimary,
                    fontFamily: AppFont.iBMPlexSansMedium),
              ),

              SizedBox(
                height: displayHeight(context) * 0.01,
              ),

              // Receiver card item
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: AppColor.colorWhite,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(getImagePath(user1Image)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: displayWidth(context) * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomText(
                              text: 'Jane Smith',
                              fontSize: 15,
                              textColor: AppColor.colorBlack,
                              fontFamily: AppFont.iBMPlexSansMedium,
                            ),
                            CustomText(
                              text: '+44567876543',
                              fontSize: 15,
                              textColor: AppColor.colorBlack,
                              fontFamily: AppFont.iBMPlexSansLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset(getIconPath(playIcon)),
                  ],
                ),
              ),

              SizedBox(
                height: displayHeight(context) * 0.02,
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                    text: 'Delivery time',
                    fontSize: 18,
                    textColor: AppColor.colorPrimary,
                    fontFamily: AppFont.iBMPlexSansMedium),
              ),

              SizedBox(
                height: displayHeight(context) * 0.01,
              ),

              TransferCard(
                text1: 'Jane Smith',
                text2: '+44567876543',
                text3: 'Free\n',
                text4: '\$3.00',
                icon1: getIconPath(sendIcon),
                icon2: getIconPath(flashIcon),
              ),

              SizedBox(
                height: displayHeight(context) * 0.02,
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                    text: 'Payment method',
                    fontSize: 18,
                    textColor: AppColor.colorPrimary,
                    fontFamily: AppFont.iBMPlexSansMedium),
              ),

              SizedBox(
                height: displayHeight(context) * 0.01,
              ),

              TransferCard(
                text1: 'Card payment',
                text2: 'Mastercard x-123',
                text3: '',
                text4: '',
                icon1: getIconPath(cardIcon),
                icon3: getIconPath(mastercardIcon),
              ),

              SizedBox(
                height: displayHeight(context) * 0.02,
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: CustomText(
                    text: 'Reference',
                    fontSize: 18,
                    textColor: AppColor.colorPrimary,
                    fontFamily: AppFont.iBMPlexSansMedium),
              ),

              SizedBox(
                height: displayHeight(context) * 0.01,
              ),

              TransferCard(
                text1: 'School fees',
                text2: '',
                text3: '',
                text4: '',
                icon1: getIconPath(messageIcon),
              ),

              SizedBox(
                height: displayHeight(context) * 0.03,
              ),

              // Total card section
              Container(
                padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                  color: AppColor.colorPrimary,
                  borderRadius: BorderRadius.circular(AppDimen.borderRadius),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: displayHeight(context) * 0.015,
                    ),
                    SvgPicture.asset(getIconPath(tagIcon)),
                    SizedBox(
                      width: displayHeight(context) * 0.03,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.ltr,
                      text: TextSpan(
                        text: 'Total to pay\n',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.colorWhite,
                          fontFamily: AppFont.iBMPlexSansLight,
                        ),
                        children: const[
                          TextSpan(
                            text: '\$1,005.00',
                            style: TextStyle(
                                fontSize: 25,
                                color: AppColor.colorWhite,
                                fontFamily: AppFont.iBMPlexSansSemiBold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: displayHeight(context) * 0.05,
              ),

              // Send button
              CustomButton(
                text: 'SEND',
                textColor: AppColor.colorBlack,
                fontFamily: AppFont.iBMPlexSansMedium,
                onTap: () => Get.toNamed(Routes.HOME_PAGE),
              ),

              SizedBox(
                height: displayHeight(context) * 0.015,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
