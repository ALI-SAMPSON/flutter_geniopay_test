import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/controllers/home_controller.dart';
import 'package:flutter_geniopay_app/features/home/widgets/botton_sheet.dart';
import 'package:flutter_geniopay_app/features/home/widgets/circle_button.dart';
import 'package:flutter_geniopay_app/routes/app_pages.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorPrimaryLight,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.colorWhite,
        shape: CircularNotchedRectangle(),
        //shape of notch
        notchMargin: 5,
        //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // card icon
            GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    getIconPath(card1Icon),
                    width: 28,
                    height: 28,
                  ),
                )),

            // dollar icon
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 14.0, bottom: 14.0, right: 40.0),
                child: SvgPicture.asset(
                  getIconPath(dollarIcon),
                  width: 28,
                  height: 28,
                ),
              ),
            ),

            // wallet icon
            GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(top: 14.0, bottom: 14.0, left: 40.0),
                  child: SvgPicture.asset(
                    getIconPath(walletIcon),
                    width: 28,
                    height: 28,
                  ),
                )),

            // menu icon
            GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    getIconPath(menuIcon),
                    width: 28,
                    height: 28,
                  ),
                )),
          ],
        ),
      ),
      // OOPS: I didn't get the accurate SVG versions of the Logo
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: AppColor.colorPrimary,
          radius: 32,
          child: SvgPicture.asset(
            getIconPath(genioPayIcon),
            width: 45,
            height: 45,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SizedBox(
        height: displayHeight(context),
        width: displayWidth(context),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Custom appbar for home
              Container(
                margin: EdgeInsets.all(25),
                height: displayHeight(context) * 0.10,
                width: displayWidth(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(Routes.PROOF_IDENTITY_PAGE),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                ExactAssetImage(getImagePath(ellipseImage)),
                            child: Container(
                              height: 55,
                              width: 55,
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(getImagePath(user1Image)),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: displayWidth(context) * 0.015,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Good Morning',
                              textColor: AppColor.colorPrimary,
                              fontSize: 15.0,
                              fontFamily: AppFont.iBMPlexSansRegular,
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.002,
                            ),
                            CustomText(
                              text: 'New Genius',
                              textColor: AppColor.colorPrimary,
                              fontSize: 20.0,
                              fontFamily: AppFont.iBMPlexSansSemiBold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              getIconPath(treeIcon),
                              width: 28,
                              height: 28,
                            ), // tree icon
                            SizedBox(
                              width: displayWidth(context) * 0.018,
                            ),
                            Badge(
                              // notification icon with badge
                              position: BadgePosition.topEnd(top: -5, end: -4),
                              badgeColor: AppColor.colorRed,
                              badgeContent: Text(
                                '5',
                                style: TextStyle(
                                    color: AppColor.colorWhite, fontSize: 12),
                              ),
                              child: SvgPicture.asset(
                                getIconPath(notificationIcon),
                                width: 28,
                                height: 28,
                              ),
                            ),
                            SizedBox(
                              width: displayWidth(context) * 0.018,
                            ),
                            SvgPicture.asset(
                              getIconPath(helpIcon),
                              color: AppColor.colorPrimary,
                              width: 28,
                              height: 28,
                            ), // help icon
                          ],
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.004,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomText(
                              text: '10 000',
                              textColor: AppColor.colorPrimary,
                              fontSize: 18.0,
                              fontFamily: AppFont.iBMPlexSansSemiBold,
                            ),
                            SizedBox(
                              width: displayWidth(context) * 0.01,
                            ),
                            SvgPicture.asset(
                              getIconPath(starIcon),
                              width: 24,
                              height: 24,
                            ), // tree icon
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // Total balance
              SizedBox(
                height: displayHeight(context) * 0.90,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 320,
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        width: displayWidth(context),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: AppColor.colorPrimaryLight,
                          borderRadius:
                              BorderRadius.circular(AppDimen.borderRadius25),
                          border: Border.all(
                              color: AppColor.colorPrimary,
                              width: AppDimen.borderWidthNormal),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.colorPrimary.withOpacity(0.2),
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset:
                                  Offset(2, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  width: displayWidth(context) / 2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: 'Total balance',
                                        textColor: AppColor.colorPrimary,
                                        fontSize: 14.0,
                                        fontFamily: AppFont.iBMPlexSansLight,
                                      ),
                                      SvgPicture.asset(
                                        getIconPath(showIcon),
                                        width: 17,
                                        height: 17,
                                      ), // sh
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: displayHeight(context) * 0.015,
                              ),

                              CustomText(
                                text: '\$450.49',
                                textColor: AppColor.colorPrimary,
                                fontSize: 35.0,
                                fontFamily: AppFont.iBMPlexSansMedium,
                              ),

                              SizedBox(
                                height: displayHeight(context) * 0.02,
                              ),

                              // drop down with currency
                              Container(
                                alignment: Alignment.center,
                                width: 62,
                                padding: EdgeInsets.only(
                                    left: 10.0,
                                    right: 10.0,
                                    top: 5.0,
                                    bottom: 5.0),
                                decoration: BoxDecoration(
                                  color: AppColor.colorPrimary.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      CustomText(
                                        text: 'USD',
                                        textColor: AppColor.colorPrimary,
                                        fontSize: 12.0,
                                        fontFamily: AppFont.iBMPlexSansMedium,
                                      ),
                                      SizedBox(
                                        width: displayWidth(context) * 0.001,
                                      ),
                                      SvgPicture.asset(
                                        getIconPath(arrowDownIcon),
                                        color: AppColor.colorPrimary,
                                        width: 8,
                                        height: 8,
                                      ), // tree icon
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: displayHeight(context) * 0.02,
                              ),

                              Divider(
                                thickness: AppDimen.borderWidth,
                                color: AppColor.colorPrimary.withOpacity(0.2),
                              ),

                              SizedBox(
                                height: displayHeight(context) * 0.02,
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleButton(
                                      text: 'Pay out',
                                      icon: getIconPath(payoutIcon)),
                                  CircleButton(
                                      text: 'Pay in',
                                      icon: getIconPath(payinIcon)),
                                  CircleButton(
                                      text: 'Exchange',
                                      icon: getIconPath(exchangeIcon)),
                                  CircleButton(
                                      text: 'More',
                                      icon: getIconPath(categoryIcon)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: BottomSheetItem(
                        height: (displayHeight(context) * 0.90) - 320,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// // bottom sheet dialog
// Future showModalDialog(BuildContext context) {
//   return showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (BuildContext context) {
//         return BottomSheetItem(
//           height: (displayHeight(context) * 0.90) - 290,
//         );
//       });
// }
}
