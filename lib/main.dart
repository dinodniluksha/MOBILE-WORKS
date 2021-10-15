import 'package:flutter/material.dart';
import 'package:grocerya/constant/constants.dart';
import 'package:grocerya/screens/menu/menu_screen.dart';
import 'package:grocerya/screens/shop_view/shop_view_screen.dart';

void main() {
  runApp(MyApp());
}

// graphql endpoint https://lsfegkovzra3jbigsrpvlsx7om.appsync-api.ap-south-1.amazonaws.com/graphql
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocerya',
      theme: ThemeData(
        primaryColor: gPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MenuScreen(),
      //home: ShopViewScreen(),
    );
  }
}
