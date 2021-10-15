import 'package:flutter/material.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/custom_list_tile.dart';
import 'package:grocerya/widgets/text_containers/title_container.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Container(
        padding: EdgeInsets.only(
            left: size.width * 0.0346,
            top: size.height * 0.052,
            right: size.width * 0.0346),
        child: Column(
          children: <Widget>[
            TitleContainer(
              title: 'Settings',
              fontSize: 30,
            ),
            CustomListTile(
              field: 'Language',
              fieldValue: 'English',
              actionHint: 'Change',
              action: changeLanguage,
            ),
            CustomListTile(
              field: 'Password',
              fieldValue: 'Password',
              hideFieldValue: true,
              actionHint: 'Change',
              action: changePassword,
            ),
            CustomListTile(
              field: 'Location',
              fieldValue: 'Bucharest, Romania',
              actionHint: 'Edit',
              action: editLocation,
            ),
            CustomListTile(
              field: 'Receive notification',
              switchAction: true,
              switchParam: false,
              action: setReceiveNotifi,
            ),
            CustomListTile(
              field: 'Receive newsletters',
              switchAction: true,
              switchParam: true,
              action: setReceiveNewsletters,
            ),
            CustomListTile(
              field: 'Receive special offe',
              switchAction: true,
              switchParam: true,
              action: setReceiveSpecialOffe,
            ),
          ],
        ),
      ),
    );
  }

  void changeLanguage() {
    print('Try to change Language');
  }

  void changePassword() {
    print('Try to change Password');
  }

  void editLocation() {
    print('Try to edit Location');
  }

  void setReceiveNotifi() {
    print('Try to set Receive Notifications');
  }

  void setReceiveNewsletters() {
    print('Try to Receive News letters');
  }

  void setReceiveSpecialOffe() {
    print('Try to set Receive Special Offe');
  }
}
