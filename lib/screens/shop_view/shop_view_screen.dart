import 'package:flutter/material.dart';
import 'package:grocerya/widgets/app_bar_action.dart';
import 'package:grocerya/widgets/custom_app_bar.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/screens/shop_view/components/body.dart';

class ShopViewScreen extends StatelessWidget {
  const ShopViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getProportionateScreenHeight(50)),
        child: CustomAppBar(
          headLeft: AppBarAction(
            actionHint: 'back on white',
            feedContent: context,
          ),
          headMiddle: false,
          headRight: AppBarAction(
              actionHint: 'favorite',
              customAction: () {
                print('User clicked Favorte');
              }),
        ),
      ),
      body: Body(),
    );
  }
}
