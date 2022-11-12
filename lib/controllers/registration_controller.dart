import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  static RegistrationController instance = Get.find();

  // controllers
  TextEditingController tinController = TextEditingController();

  //instance variables
  var countryDialCode = '+55'.obs;
  var selectedCountry = 'Brazil'.obs;
  var isCertify = false.obs;
  var isTax = false.obs;
  var isDeclare = false.obs;

  void onCountryChange(code) {
    //TODO : manipulate the selected country code here
    countryDialCode.value = code.dialCode;
    selectedCountry.value = code.name;
    debugPrint("New Country Code selected: $countryDialCode");
  }

  // certifyMe me callback method
  void onCertifyChange(bool? value) {
    isCertify(value);
  }

  // certifyMe me callback method
  void onTaxChange(bool? value) {
    isTax(value);
  }

  // certifyMe me callback method
  void onDeclareChange(bool? value) {
    isDeclare(value);
  }

  // change status for all modules
  SystemUiOverlayStyle overlayStyle(Color navBarColor) {
    return SystemUiOverlayStyle(
      statusBarColor: AppColor.colorWhite, // set color of status bar
      statusBarIconBrightness: Brightness.dark, // set color of status bar icon
      systemNavigationBarColor: navBarColor, // set color of navigation bar
      systemNavigationBarIconBrightness:
          Brightness.dark, // set color of icons on the navigation bar
    );
  }
}
