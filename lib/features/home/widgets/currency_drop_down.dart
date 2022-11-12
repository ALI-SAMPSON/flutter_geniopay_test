import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_font.dart';

class CurrencyDropDown extends StatelessWidget {

  final String image;
  final String? icon;
  final String currency;

  const CurrencyDropDown({Key? key, required this.image, this.icon, required this.currency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 32, width: 32,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover,),
          ),
        ),
        SizedBox(width: displayWidth(context)*0.02,),
        CustomText(text: currency, fontSize: 18, fontFamily: AppFont.iBMPlexSansMedium,),
        SizedBox(width: displayWidth(context)*0.01,),
        SvgPicture.asset(icon ?? getIconPath(arrowDownIcon), width: 10, height: 10,),
        //Icon(Icons.keyboard_arrow_down_outlined, size: 24, color: ,)
      ],
    );
  }
}
