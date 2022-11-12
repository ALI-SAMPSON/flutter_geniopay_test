import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';

CountryListPick countryListPicker (BuildContext context, controller){
  return CountryListPick(
    appBar: AppBar(
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
    initialSelection: 'US',
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