import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_geniopay_app/bindings/app_binding.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:get/get.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white, // set color of status bar
    statusBarIconBrightness: Brightness.dark, // set color of status bar icon
    systemNavigationBarColor:  Colors.white, // set color of navigation bar
    systemNavigationBarIconBrightness:
    Brightness.dark, // set color of icons on the navigation bar
  )); // set st
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GenioPay',
      theme: ThemeData(
        checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            side: BorderSide(
                width: AppDimen.borderWidth, color:
            AppColor.colorPrimary),
            splashRadius: 0),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColor.colorPrimary,
          secondary: AppColor.colorYellowDark
        ),
      ),
      initialBinding: AppBinding(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

