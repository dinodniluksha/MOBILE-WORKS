import 'package:flutter/material.dart';
import 'package:grocerya/constant/size_config.dart';

class DetailBox extends StatefulWidget {
  final String title;
  final List<Widget> subTitle;
  const DetailBox({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  _DetailBoxState createState() => _DetailBoxState();
}

class _DetailBoxState extends State<DetailBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Text(widget.title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.black,
              )),
          SizedBox(
            height: getProportionateScreenHeight(16),
          ),
          Column(
            children: widget.subTitle,
          )
        ],
      ),
    );
  }
}
