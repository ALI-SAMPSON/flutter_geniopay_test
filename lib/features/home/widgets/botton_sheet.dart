import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/bindings/init_controller.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_dimen.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/features/home/widgets/invite_item.dart';
import 'package:flutter_geniopay_app/features/home/widgets/transaction_item.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';

class BottomSheetItem extends StatelessWidget {
  final double height;

  const BottomSheetItem({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: height,
      decoration: BoxDecoration(
        color: AppColor.colorWhite,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDimen.borderRadius25),
            topRight: Radius.circular(AppDimen.borderRadius25)),
        boxShadow: [
          BoxShadow(
            color: AppColor.colorPrimary.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(3, 0), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: displayHeight(context) * 0.005,
          ),

          Container(
            width: 25,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),

          SizedBox(
            height: displayHeight(context) * 0.005,
          ),

          SizedBox(
            height: 140,
            //margin: EdgeInsets.all(10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(10),
                itemCount: homeController.invites.length,
                itemBuilder: (_, index) {
                  return InviteItem(
                    invite: homeController.invites[index],
                  );
                }),
          ),

          // TRANSACTIONS
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Transactions',
                  textColor: AppColor.colorBlack,
                  fontSize: 16.0,
                  fontFamily: AppFont.iBMPlexSansSemiBold,
                ),
                GestureDetector(
                  onTap: () {}, // navigate to view all transactions
                  child: Text(
                    'View All',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                      fontFamily: AppFont.iBMPlexSansRegular,
                      color: AppColor.colorBlack,
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemCount: homeController.transactions.length,
                  itemBuilder: (_, index) {
                    return TransactionItem(
                      transaction: homeController.transactions[index],
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
