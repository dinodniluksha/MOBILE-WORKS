import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_logo_box.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/rounded_button.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/address_form/address_form.dart';
import 'package:grocerya/screens/location_adder/components/google_map.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Background(
      child: Container(
          child: Column(children: <Widget>[
        Container(
          height: getProportionateScreenHeight(640),
          width: getProportionateScreenWidth(338),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              CustomGoogleMap(),
              Container(
                padding: EdgeInsets.all(0.0),
                height: getProportionateScreenHeight(108),
                width: getProportionateScreenWidth(56),
                alignment: Alignment.topCenter,
                child: AppLogoBox(
                  iconHeight: getProportionateScreenHeight(60),
                  iconWidth: getProportionateScreenWidth(44),
                  iconPath: "assets/icons/map_marker.svg",
                ),
              )
            ],
          ),
        ),
        Container(
          child: RoundedButton(
            text: 'Add another address',
            textSize: 15,
            press: () {
              if (CustomGoogleMap.isLocationPicked == true) {
                Timer(Duration(seconds: 1), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddressForm(),
                      ));
                });
              }
            },
            padVertical: 5,
            padHorizontal: 30,
          ),
        )
      ])),
    );
  }
}
