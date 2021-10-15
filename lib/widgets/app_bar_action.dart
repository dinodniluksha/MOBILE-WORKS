import 'package:flutter/material.dart';
import 'package:grocerya/widgets/clickable_icon.dart';
import 'package:grocerya/constant/size_config.dart';

class AppBarAction extends StatefulWidget {
  final String actionType;
  final String actionHint;
  final dynamic customAction;
  final dynamic navigateScreen;
  final dynamic feedContent;
  const AppBarAction({
    Key? key,
    this.actionType = 'Clickable Icon',
    this.actionHint = '',
    this.customAction,
    this.navigateScreen,
    this.feedContent,
  }) : super(key: key);

  @override
  _AppBarActionState createState() => _AppBarActionState();
}

class _AppBarActionState extends State<AppBarAction> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(
        context); // initialize height and width of screen on running device

    var item;
    switch (widget.actionType) {
      case 'Clickable Icon':
        item = Container();
        switch (widget.actionHint) {
          case 'close':
            item = ClickableIcon(
              iconHeight: getProportionateScreenHeight(28),
              iconWidth: getProportionateScreenWidth(28),
              iconPath: "assets/icons/close.svg",
              tap: () {
                Navigator.push(
                  widget.feedContent,
                  MaterialPageRoute(
                    builder: (context) => widget.navigateScreen,
                  ),
                );
              },
            );
            break;
          case 'back on transparent':
            item = ClickableIcon(
              iconHeight: getProportionateScreenHeight(28),
              iconWidth: getProportionateScreenWidth(28),
              iconPath: "assets/icons/icons_arrow_long_left.svg",
              tap: () {
                print('Clicked go to back');
                Navigator.pop(widget.feedContent);
              },
            );
            break;
          case 'back on white':
            item = ClickableIcon(
              iconHeight: getProportionateScreenHeight(28),
              iconWidth: getProportionateScreenWidth(28),
              iconPath: "assets/icons/back_button.svg",
              tap: () {
                print('Clicked go to back');
                Navigator.pop(widget.feedContent);
              },
            );
            break;
          case 'favorite':
            item = ClickableIcon(
              iconHeight: getProportionateScreenHeight(28),
              iconWidth: getProportionateScreenWidth(28),
              iconPath: "assets/icons/add_to_favorite_button.svg",
              tap: widget.customAction,
            );
        }
        break;
      case 'Clickable String':
        item = SizedBox();
        break;
      default:
        item = widget.feedContent;
    }
    return item;
  }
}
