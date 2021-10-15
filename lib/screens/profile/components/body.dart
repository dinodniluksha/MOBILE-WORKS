import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/clickable_icon.dart';
import 'package:grocerya/widgets/custom_list_tile.dart';
import 'package:grocerya/widgets/text_containers/title_container.dart';
import 'package:grocerya/constant/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        width: getProportionateScreenWidth(349),
        child: Column(
          children: <Widget>[
            Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                height: getProportionateScreenHeight(171),
                width: getProportionateScreenWidth(207),
              ),
              Container(
                height: getProportionateScreenHeight(138),
                width: getProportionateScreenWidth(125),
                decoration: BoxDecoration(
                  color: const Color(0x1A1824),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.stack.imgur.com/c12PT.png?s=96&g=1'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: const Color(0xFFd5d5dc),
                    width: getProportionateScreenWidth(8),
                  ),
                  borderRadius: BorderRadius.all(Radius.elliptical(100, 90)),
                ),
              ),
              Positioned(
                  top: getProportionateScreenHeight(61),
                  left: getProportionateScreenWidth(142),
                  child: ClipOval(
                      child: Container(
                    padding: EdgeInsets.all(getProportionateScreenHeight(8)),
                    width: getProportionateScreenWidth(41),
                    height: getProportionateScreenHeight(42),
                    color: Colors.black.withOpacity(0.6),
                    child: ClickableIcon(
                      iconHeight: getProportionateScreenHeight(61),
                      iconWidth: getProportionateScreenWidth(56),
                      iconPath: "assets/icons/photo-camera.svg",
                      tap: updateUserPhoto,
                    ),
                  )))
            ]),
            Container(
              height: getProportionateScreenHeight(57),
              width: getProportionateScreenWidth(349),
              child: Center(
                  child: TitleContainer(
                title: 'Niculici Victor',
                fontSize: 30,
                alignmentType: TextAlign.center,
              )),
            ),
            CustomListTile(
              field: 'First name',
              fieldValue: 'Niculici',
              actionHint: 'Edit',
              action: editUserFirstName,
            ),
            CustomListTile(
              field: 'Last name',
              fieldValue: 'Victor',
              actionHint: 'Edit',
              action: editUserLastName,
            ),
            CustomListTile(
              field: 'Email',
              fieldValue: 'niculici.victor@gmai',
              actionHint: 'Change',
              action: changeUserEmail,
            ),
            CustomListTile(
              field: 'Phone number',
              fieldValue: '+4 0767 217 315',
              actionHint: 'Change',
              action: changeUserPhoneNumber,
            ),
          ],
        ),
      ),
    );
  }

  void close() {
    print('Back to Home');
  }

  void updateUserPhoto() {
    print('Try to update User Profile Photo');
  }

  void editUserFirstName() {
    print('Try to edit First Name of User');
  }

  void editUserLastName() {
    print('Try to edit Last Name of User');
  }

  void changeUserEmail() {
    print('Try to change Email of User');
  }

  void changeUserPhoneNumber() {
    print('Try to change Phone Number of User');
  }
}
