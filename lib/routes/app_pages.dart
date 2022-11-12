// ignore_for_file: constant_identifier_names

library app_pages;

import 'package:flutter_geniopay_app/features/account/views/registration_page.dart';
import 'package:flutter_geniopay_app/features/home/views/home_page.dart';
import 'package:flutter_geniopay_app/features/home/views/proof_identity_page.dart';
import 'package:flutter_geniopay_app/features/home/views/transfer_page.dart';
import 'package:flutter_geniopay_app/features/subscription/views/subscription_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages{

  AppPages._();

  static const INITIAL = Routes.REGISTRATION_PAGE;

  static final routes = [

    GetPage(
        name: _Paths.REGISTRATION_PAGE,
        page: () => RegistrationPage(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)
    ),

    GetPage(
        name: _Paths.SUBSCRIPTION_PAGE,
        page: () => SubscriptionPage(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)
    ),

    GetPage(
        name: _Paths.TRANSFER_PAGE,
        page: () => TransfersPage(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)
    ),

    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => HomePage(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)
    ),

    GetPage(
        name: _Paths.PROOF_IDENTITY_PAGE,
        page: () => ProofIdentityPage(),
        transition: Transition.fade,
        transitionDuration: Duration(seconds: 1)
    ),

  ];

}