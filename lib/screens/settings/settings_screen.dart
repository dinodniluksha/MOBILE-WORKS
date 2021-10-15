import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_bar_action.dart';
import 'package:grocerya/widgets/custom_app_bar.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/settings/components/body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getProportionateScreenHeight(50)),
        child: CustomAppBar(
          headLeft: AppBarAction(
            actionHint: 'back on transparent',
            feedContent: context,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
