import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/models/invite.dart';
import 'package:flutter_geniopay_app/models/transaction.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();

  // controllers
  TextEditingController tinController = TextEditingController();

  List invites = [
    Invite(
      title: 'Invite your friends',
      subTitle:
          'For every invite, you win \$20! Click here to start inviting your friends. ',
      image: getImagePath(educationImage),
      color: AppColor.colorBlue,
    ),
    Invite(
      title: 'Create a Jar',
      subTitle:
          'Save and grow your money effortlessly. You can start wit as little as \$1.00.',
      image: getImagePath(educationImage),
      color: AppColor.colorRed,
    ),
  ];

  List transactions = [
    Transaction(
      image: getIconPath(dribbleIcon),
      name: 'Dribbble',
      date: '2021.05.04',
      price: '-\$ 99.00',
      status: 'Completed',
      statusColor: Colors.green.withOpacity(0.6),
    ),
    Transaction(
      image: getIconPath(spotifyIcon),
      name: 'Spotify',
      date: '2021.05.04',
      price: '-\$ 99.00',
      status: 'In Progress',
      statusColor: Colors.deepOrangeAccent.withOpacity(0.6),
    ),
    Transaction(
      image: getIconPath(spotifyIcon),
      name: 'Dribbble',
      date: '2021.05.04',
      price: '-\$ 99.00',
      status: 'Completed',
      statusColor: Colors.green.withOpacity(0.6),
    ),
  ];

  //instance variables
  var countryDialCode = '+55'.obs;
  var selectedCountry = 'Brazil'.obs;
  var isCertify = false.obs;
  var isTax = false.obs;
  var isDeclare = false.obs;
}
