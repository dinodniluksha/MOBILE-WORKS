import 'package:flutter/material.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/menu/components/body.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
