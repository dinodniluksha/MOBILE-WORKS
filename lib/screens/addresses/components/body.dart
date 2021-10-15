import 'package:flutter/material.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/rounded_button.dart';
import 'package:grocerya/widgets/text_containers/title_container.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/addresses/components/custom_list_tile.dart';
import 'package:grocerya/screens/location_adder/location_adder.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Background(
      child: Container(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TitleContainer(
                  title: 'My addresses',
                  fontSize: 30,
                ),
                Container(
                  width: size.width * 1,
                  height: size.height * 0.71,
                  child: CustomListTile(),
                )
              ],
            ),
          ),
          Container(
            child: RoundedButton(
              text: 'Add another address',
              textSize: 15,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationAdder(),
                  ),
                );
              },
              padVertical: 5,
              padHorizontal: 30,
            ),
          ),
        ],
      )),
    );
  }
}
