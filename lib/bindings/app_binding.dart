import 'package:flutter_geniopay_app/controllers/home_controller.dart';
import 'package:flutter_geniopay_app/controllers/registration_controller.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegistrationController());
    Get.lazyPut(() => HomeController());
  }
  
}