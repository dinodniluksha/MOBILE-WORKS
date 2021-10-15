import 'package:flutter/material.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/clickable_string.dart';
import 'package:grocerya/screens/addresses/addresses_screen.dart';
import 'package:grocerya/screens/menu/components/menu_field.dart';
import 'package:grocerya/screens/profile/profile_screen.dart';
import 'package:grocerya/screens/settings/settings_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Background(
      child: Stack(
        children: <Widget>[
          Positioned(
              top: getProportionateScreenHeight(146),
              left: getProportionateScreenWidth(41),
              child: Container(
                width: getProportionateScreenWidth(225),
                height: getProportionateScreenHeight(812),
                child: Column(children: <Widget>[
                  MenuField(
                    iconHeight: 32,
                    iconWidth: 28,
                    iconSrc: "assets/icons/my_profile.svg",
                    menuFieldName: 'My profile',
                    tapFunc: () {
                      print("Open Profile page");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 32,
                      iconWidth: 28,
                      iconSrc: "assets/icons/orders.svg",
                      menuFieldName: 'My orders',
                      tapFunc: openOrders),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 32,
                      iconWidth: 28,
                      iconSrc: "assets/icons/location.svg",
                      menuFieldName: 'My addresses',
                      tapFunc: () {
                        print("Open Addresses");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddressesScreen(),
                          ),
                        );
                      }),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 32,
                      iconWidth: 30,
                      iconSrc: "assets/icons/payments.svg",
                      menuFieldName: 'My payment methods',
                      tapFunc: openPaymentMethods),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 28,
                      iconWidth: 28,
                      iconSrc: "assets/icons/settings.svg",
                      menuFieldName: 'Settings',
                      tapFunc: () {
                        print("Open Settings page");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsScreen(),
                          ),
                        );
                      }),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 32,
                      iconWidth: 30,
                      iconSrc: "assets/icons/contact.svg",
                      menuFieldName: 'Contact',
                      tapFunc: openContact),
                  SizedBox(height: getProportionateScreenHeight(28)),
                  MenuField(
                      iconHeight: 32,
                      iconWidth: 30,
                      iconSrc: "assets/icons/sign_in_up.svg",
                      menuFieldName: 'Log out',
                      tapFunc: logOut),
                  SizedBox(height: getProportionateScreenHeight(24)),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: getProportionateScreenHeight(24),
                    width: double.infinity,
                    child: ClickableString(
                      title: 'Terms & Conditions',
                      stringSize: 13,
                      stringThickness: FontWeight.normal,
                      stringColor: Colors.black,
                      tap: openTermsConditions,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(24)),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: getProportionateScreenHeight(24),
                    width: double.infinity,
                    child: ClickableString(
                      title: 'Privacy Policy',
                      stringSize: 13,
                      stringThickness: FontWeight.normal,
                      stringColor: Colors.black,
                      tap: openPrivacyPolicy,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(24)),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: getProportionateScreenHeight(24),
                    width: double.infinity,
                    child: ClickableString(
                      title: 'Faq & Support',
                      stringSize: 13,
                      stringThickness: FontWeight.normal,
                      stringColor: Colors.black,
                      tap: openFaqSupport,
                    ),
                  ),
                ]),
              )),
        ],
      ),
    );
  }

  void openOrders() {
    print("Open Orders");
  }

  void openPaymentMethods() {
    print("Open Payment Methods");
  }

  void openContact() {
    print("Open Contact");
  }

  void logOut() {
    print("Open logOut");
  }

  void openTermsConditions() {
    print("Open Terms Conditions");
  }

  void openPrivacyPolicy() {
    print("Open Privacy Policy");
  }

  void openFaqSupport() {
    print("Open Faq & Support");
  }
}
