import 'package:flutter/material.dart';
import 'package:grocerya/widgets/text_containers/text_container.dart';
import 'package:grocerya/constant/constants.dart';
import 'package:grocerya/widgets/rating_button_base.dart';
import 'package:grocerya/constant/size_config.dart';

class ReviewCard extends StatelessWidget {
  final String userPhoto;
  final String title;
  final List<Widget> subTitle;
  final String comment;
  final int lastReviewPoint;
  const ReviewCard({
    Key? key,
    required this.userPhoto,
    required this.title,
    required this.subTitle,
    required this.comment,
    required this.lastReviewPoint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: getProportionateScreenHeight(27)),
      child: Column(
        children: <Widget>[
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              width: getProportionateScreenWidth(51),
              height: getProportionateScreenHeight(57),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(userPhoto),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            title: Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black,
                )),
            subtitle: Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: subTitle,
                )),
            trailing: Container(
                alignment: Alignment.centerRight,
                width: getProportionateScreenWidth(60),
                child: RatingButtonBase(
                  number: lastReviewPoint,
                  fontColor: gPrimaryLightColor,
                  iconColor: gPrimaryLightColor,
                  buttonColor: gPrimaryColor,
                )),
          ),
          (comment != '')
              ? Container(
                  margin: EdgeInsets.only(
                    top: getProportionateScreenHeight(7),
                    bottom: getProportionateScreenHeight(7),
                  ),
                  padding: EdgeInsets.all(0),
                  width: getProportionateScreenWidth(375),
                  child: TextContainer(
                    text: comment,
                    alignmentType: TextAlign.start,
                    height:
                        1.5, //text line spacing height is not relative to device screen
                  ))
              : SizedBox(
                  height: getProportionateScreenHeight(7),
                ),
        ],
      ),
    );
  }
}
