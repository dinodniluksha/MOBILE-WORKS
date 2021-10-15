import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_logo_box.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/rounded_button.dart';
import 'package:grocerya/widgets/text_containers/text_field_container.dart';
import 'package:grocerya/widgets/text_containers/title_container.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/address_form/components/form_field.dart';
import 'package:grocerya/screens/addresses/addresses_screen.dart';
import 'package:grocerya/screens/location_adder/components/google_map.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var lat = CustomGoogleMap.data['pickedPoint']!.latitude;
  var long = CustomGoogleMap.data['pickedPoint']!.longitude;
  var addressLine = CustomGoogleMap.data['pickedAddress'];

  final _formKey = GlobalKey<FormState>();
  bool defaultState = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Background(
        child: Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TitleContainer(
              title: 'Add new address',
              fontSize: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldContainer(
                      child: CustomFormField(
                    hintText: 'Enter your picking address',
                    autoFilled: addressLine != '' ? addressLine : null,
                  )),
                  TextFieldContainer(
                      child: CustomFormField(
                    hintText: 'Enter the remained address values',
                    autoFilled: lat.toString(),
                  )),
                  TextFieldContainer(
                      child: CustomFormField(
                    hintText: 'Enter the type (work, home, another)',
                    autoFilled: long.toString(),
                  )),
                  Container(
                    width: getProportionateScreenWidth(300),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            width: getProportionateScreenWidth(37),
                            child: Center(
                              child: defaultState == true
                                  ? AppLogoBox(
                                      iconHeight:
                                          getProportionateScreenHeight(54),
                                      iconWidth:
                                          getProportionateScreenWidth(25),
                                      iconPath:
                                          "assets/icons/icon_big_check.svg",
                                    )
                                  : AppLogoBox(
                                      iconHeight:
                                          getProportionateScreenHeight(54),
                                      iconWidth:
                                          getProportionateScreenWidth(25),
                                      iconPath:
                                          "assets/icons/unchecked_oval.svg",
                                    ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              defaultState = !defaultState;
                            });
                          },
                        ),
                        Text(
                          "Make this my default address",
                        )
                      ],
                    ),
                  ),
                  RoundedButton(
                    text: 'Save address',
                    textSize: 15,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddressesScreen(),
                        ),
                      );
                    },
                    padVertical: 5,
                    padHorizontal: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
