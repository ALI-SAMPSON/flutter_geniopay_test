import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/bindings/init_controller.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:get/get.dart';

class CountryListPicker extends StatelessWidget {
  final dynamic controller;

  const CountryListPicker({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        width: displayWidth(context),
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: AppColor.colorPrimaryLight,
          borderRadius: BorderRadius.circular(AppDimen.borderRadius),
          border: Border.all(color: AppColor.colorPrimary, width: AppDimen.borderWidth)
        ),
        child: Row(
          children: [
            _countryListPicker(context),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Country', fontFamily: AppFont.iBMPlexSansLight, fontSize: 14,),
                SizedBox(height: 2,),
                CustomText(text: registrationController.selectedCountry.value, fontFamily: AppFont.iBMPlexSansMedium, fontSize: 14,)
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget _countryListPicker(BuildContext context) => CountryListPick(
        appBar: AppBar(
          //systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          title: const Text(
            'Select country',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
        initialSelection: 'BR',
        theme: CountryTheme(
          isShowCode: false,
          isShowFlag: true,
          isDownIcon: true,
          isShowTitle: false,
          showEnglishName: true,
          labelColor: AppColor.colorBlack,
        ),
        onChanged: controller.onCountryChange,
      );
}
