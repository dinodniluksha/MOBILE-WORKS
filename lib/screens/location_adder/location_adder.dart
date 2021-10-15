import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_bar_action.dart';
import 'package:grocerya/widgets/custom_app_bar.dart';
import 'package:grocerya/screens/location_adder/components/body.dart';
import 'package:grocerya/screens/menu/menu_screen.dart';

class LocationAdder extends StatelessWidget {
  const LocationAdder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: CustomAppBar(
          headLeft: AppBarAction(
            actionHint: 'back on transparent',
            feedContent: context,
          ),
          headRight: AppBarAction(
              actionHint: 'close',
              navigateScreen: MenuScreen(),
              feedContent: context),
        ),
      ),
      body: Body(),
    );
  }
}
