import 'package:flutter/material.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/widgets/clickable_string.dart';
import 'package:flutter_svg/svg.dart';

class MenuField extends StatelessWidget {
  final double iconWidth;
  final double iconHeight;
  final String iconSrc;
  final String menuFieldName;
  final VoidCallback tapFunc;
  const MenuField(
      {Key? key,
      required this.iconWidth,
      required this.iconHeight,
      required this.iconSrc,
      required this.menuFieldName,
      required this.tapFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: getProportionateScreenHeight(iconHeight),
        child: Row(children: <Widget>[
          SvgPicture.asset(
            iconSrc,
            width: getProportionateScreenWidth(iconWidth),
          ),
          SizedBox(width: getProportionateScreenWidth(15)),
          ClickableString(
            title: menuFieldName,
            stringSize: 17,
            stringThickness: FontWeight.bold,
            stringColor: Colors.black,
            tap: tapFunc,
          )
        ]));
  }
}
