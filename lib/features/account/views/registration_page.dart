import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/country_list_picker.dart';
import 'package:flutter_geniopay_app/commons/custom_app_bar.dart';
import 'package:flutter_geniopay_app/commons/custom_button.dart';
import 'package:flutter_geniopay_app/commons/custom_text_field.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/controllers/registration_controller.dart';
import 'package:flutter_geniopay_app/features/account/widgets/add_country_button.dart';
import 'package:flutter_geniopay_app/features/account/widgets/check_list_item.dart';
import 'package:flutter_geniopay_app/features/account/widgets/label_text.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      appBar: CustomAppBar(
        title: 'Registration',
        backIcon: getIconPath(backIcon),
        onTap: () => Get.back(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Obx(
          () => SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// introduction text
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      text: 'Individual Self-Certification relevant for\n',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColor.colorBlack,
                          fontFamily: AppFont.iBMPlexSansRegular,
                          fontWeight: FontWeight.w500),
                      children: const [
                        TextSpan(
                          text: 'FATCA',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.colorPrimary,
                              fontFamily: AppFont.iBMPlexSansMedium),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                              fontSize: 20, color: AppColor.colorBlack),
                        ),
                        TextSpan(
                          text: 'CRS',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.colorPrimary,
                              fontFamily: AppFont.iBMPlexSansMedium),
                        ),
                        TextSpan(
                          text: ' purposes',
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.colorBlack,
                              fontFamily: AppFont.iBMPlexSansRegular),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.03,
                ),
                LabelText(
                  label: '1. Country of you Tax Residence',
                  title:
                      'Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country:',
                ),

                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),

                CountryListPicker(controller: controller),

                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),

                CustomTextField(
                  controller: controller.tinController,
                  hintText: 'Enter TIN',
                ),

                SizedBox(
                  height: displayHeight(context) * 0.01,
                ),

                Align(
                    alignment: Alignment.bottomRight,
                    child: SvgPicture.asset(getIconPath(deleteIcon))),

                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),

                AddCountryButton(text: 'Add another country', onTap: () {}),

                SizedBox(
                  height: displayHeight(context) * 0.05,
                ),

                LabelText(
                  label: '2. FATCA related',
                  title:
                      'Please select one of the options by checking the corresponding box below:',
                ),

                SizedBox(
                  height: displayHeight(context) * 0.025,
                ),

                CheckListItem(
                  text1: 'I hereby certify',
                  text2: ' I am a tax resident of the United States',
                  text3:
                      ' and that I have designated the United States as one of the countries in the above section. ',
                  value: controller.isCertify.value,
                  onChanged: controller.onCertifyChange,
                ),

                SizedBox(
                  height: displayHeight(context) * 0.06,
                ),

                CheckListItem(
                    text1: 'I hereby certify that',
                    text2:
                        ' that I am not a tax resident of the United States.',
                    value: controller.isTax.value,
                    onChanged: controller.onTaxChange),

                SizedBox(
                  height: displayHeight(context) * 0.06,
                ),

                // Declaration check list item,
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: '3. Declaration',
                    textColor: AppColor.colorPrimary,
                    fontSize: 16,
                    textAlign: TextAlign.start,
                    fontFamily: AppFont.iBMPlexSansMedium,
                  ),
                ),

                SizedBox(
                  height: displayHeight(context) * 0.004,
                ),

                CheckListItem(
                  text1:
                      'I hereby declare that the information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that I will inform you within 30 days if any certification on this form becomes incorrect or will no longer be applied.',
                  value: controller.isDeclare.value,
                  onChanged: controller.onDeclareChange,
                ),

                SizedBox(
                  height: displayHeight(context) * 0.06,
                ),

                // Date text ,
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    text: 'Date: 15.08.2022',
                    textColor: AppColor.colorPrimary,
                    fontSize: 18,
                    fontFamily: AppFont.iBMPlexSansSemiBold,
                    textAlign: TextAlign.start,
                  ),
                ),

                SizedBox(
                  height: displayHeight(context) * 0.018,
                ),

                CustomButton(
                  text: 'CONTINUE',
                  onTap: () => Get.toNamed(Routes.SUBSCRIPTION_PAGE),
                  backgroundColor: AppColor.colorPrimaryLight,
                ),

                SizedBox(
                  height: displayHeight(context) * 0.018,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
