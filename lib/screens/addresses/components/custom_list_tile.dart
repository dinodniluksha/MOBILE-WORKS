import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_logo_box.dart';
import 'package:grocerya/widgets/clickable_string.dart';
import 'package:grocerya/constant/constants.dart';
import 'package:grocerya/constant/size_config.dart';

import 'package:grocerya/models/dummy/address.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    Key? key,
  }) : super(key: key);
  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  _CustomListTileState();

  @override
  void initState() {
    assigningAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return ListView.builder(
      padding: EdgeInsets.only(top: 0, right: getProportionateScreenWidth(6)),
      itemCount: addressList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: InkWell(
            child: Container(
              width: size.width * 0.1,
              child: Center(
                child: checkedStates[index] == true
                    ? AppLogoBox(
                        iconHeight: getProportionateScreenHeight(28),
                        iconWidth: getProportionateScreenWidth(28),
                        iconPath: "assets/icons/icon_big_check.svg",
                      )
                    : AppLogoBox(
                        iconHeight: getProportionateScreenHeight(28),
                        iconWidth: getProportionateScreenWidth(28),
                        iconPath: "assets/icons/unchecked_oval.svg",
                      ),
              ),
            ),
            onTap: () {
              setState(() {
                assigningAddressUpdate(index);
              });
            },
          ),
          title: Text(addressList[index].type,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: gBlack50,
              )),
          subtitle: Text(addressList[index].address,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Colors.black,
              )),
          trailing: ClickableString(
            title: 'Change',
            stringSize: 14,
            stringThickness: FontWeight.w700,
            stringColor: gPrimaryColor,
            tap: change,
          ),
        );
      },
    );
  }

  List<bool> checkedStates = [];

  void assigningAddress() {
    for (var i = 0; i < addressList.length; i++) {
      checkedStates.add(addressList[i].isDefault);
    }
  }

  void assigningAddressUpdate(int point) {
    for (var i = 0; i < addressList.length; i++) {
      checkedStates[i] = false;
    }
    checkedStates[point] = true;
  }

  void change() {
    print('Edit Address');
  }
}
