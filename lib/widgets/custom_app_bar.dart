import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_bar_action.dart';
import 'package:grocerya/constant/size_config.dart';

import 'app_logo_box.dart';

class CustomAppBar extends StatelessWidget {
  final dynamic headLeft;
  final dynamic headMiddle;
  final dynamic headRight;
  const CustomAppBar({
    Key? key,
    this.headLeft,
    this.headMiddle = true,
    this.headRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(
        context); // initialize height and width of screen on running device
    return AppBar(
      toolbarHeight: getProportionateScreenHeight(70),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Transform.scale(
        scale: 1,
        child: headLeft != null ? headLeft : SizedBox(),
      ),
      title: headMiddle
          ? AppLogoBox(
              iconHeight: getProportionateScreenHeight(28),
              iconWidth: getProportionateScreenWidth(28),
              iconPath: "assets/icons/app_logo.svg",
            )
          : null,
      actions: [
        Transform.scale(
          scale: 1,
          child: headRight != null ? headRight : SizedBox(),
        ),
      ],
    );
  }
}
