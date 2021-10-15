import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocerya/constant/size_config.dart';

class IconText extends StatelessWidget {
  final double iconWidth;
  final double iconHeight;
  final String iconSrc;
  final String text;

  const IconText({
    Key? key,
    required this.iconWidth,
    required this.iconHeight,
    required this.iconSrc,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenHeight(iconHeight),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset(
                iconSrc,
                width: getProportionateScreenWidth(iconWidth),
              ),
              SizedBox(width: getProportionateScreenWidth(2)),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ]));
  }
}
