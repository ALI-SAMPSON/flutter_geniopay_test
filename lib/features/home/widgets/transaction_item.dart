import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/models/transaction.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: AppColor.colorPrimaryLight,
                child: SvgPicture.asset(
                  transaction.image,
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: displayWidth(context) * 0.06,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: transaction.name,
                    textColor: AppColor.colorBlack,
                    fontFamily: AppFont.iBMPlexSansRegular,
                  ),
                  CustomText(
                    text: transaction.date,
                    textColor: Colors.grey,
                    fontSize: 14,
                    fontFamily: AppFont.iBMPlexSansRegular,
                  ),
                ],
              ),
            ],
          ),
          // price && status
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: transaction.price,
                textColor: AppColor.colorBlack,
                fontFamily: AppFont.iBMPlexSansRegular,
              ),
              CustomText(
                text: transaction.status,
                textColor: transaction.statusColor,
                fontSize: 14,
                fontFamily: AppFont.iBMPlexSansRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
