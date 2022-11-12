import 'package:flutter/material.dart';
import 'package:flutter_geniopay_app/constants/app_color.dart';
import 'package:flutter_geniopay_app/constants/app_font.dart';
import 'package:flutter_geniopay_app/commons/custom_text.dart';
import 'package:flutter_geniopay_app/constants/asset_path.dart';
import 'package:flutter_geniopay_app/utils/size_helpers.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String backIcon;
  final Color? backgroundColor;
  final Color? textColor;
  final Function() onTap;

  const CustomAppBar(
      {Key? key,
      required this.title,
      required this.backIcon,
      this.backgroundColor = AppColor.colorWhite,
      this.textColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0.0,
      toolbarHeight: displaySize(context).height * 0.07,
      leading: Transform.scale(
        scale: 0.28,
        child: InkWell(
          onTap: onTap,
          child: SvgPicture.asset(
            backIcon,
          ),
        ),
      ),
      title: CustomText(
        text: title,
        textColor: AppColor.colorBlack,
        fontSize: 19.0,
        fontFamily: AppFont.iBMPlexSansMedium,
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Transform.scale(
              scale: 1.3,
              child: SvgPicture.asset(
                getIconPath(helpIcon),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
