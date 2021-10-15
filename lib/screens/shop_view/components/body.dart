import 'package:flutter/material.dart';
import 'package:grocerya/widgets/background/plain_background.dart';
import 'package:grocerya/widgets/text_containers/text_container.dart';
import 'package:grocerya/widgets/text_containers/title_container.dart';
import 'package:grocerya/constant/size_config.dart';
import 'package:grocerya/models/dummy/review.dart';
import 'package:grocerya/screens/shop_view/components/icon_text.dart';
import 'package:grocerya/screens/shop_view/components/detail_box.dart';
import 'package:grocerya/screens/shop_view/components/review_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(top: getProportionateScreenHeight(33)),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: getProportionateScreenHeight(271),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/564x/d0/26/27/d02627ed4048ffdd5b26afcb8da753e3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Container(
              width: getProportionateScreenWidth(300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleContainer(
                    title: 'London Mercantile Shop',
                    fontSize: 30,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(11)),
                    child: TextContainer(
                      text:
                          'Leading independent fashion boutique, selling a carefully curated edit of menswear, womenswear and apothecary. With an emphasis on the crafted, the classic and the sustainable.',
                      alignmentType: TextAlign.start,
                      height:
                          1.35, //text line spacing height is not relative to device screen
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(20),
                        bottom: getProportionateScreenHeight(40)),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconText(
                            iconHeight: 24,
                            iconWidth: 18,
                            iconSrc: "assets/icons/green_star.svg",
                            text: '4.8 (+120)',
                          ),
                          IconText(
                            iconHeight: 18,
                            iconWidth: 15,
                            iconSrc: "assets/icons/map_distance.svg",
                            text: 'Distance • 5km',
                          ),
                          IconText(
                            iconHeight: 23,
                            iconWidth: 18,
                            iconSrc: "assets/icons/delivery_truck.svg",
                            text: 'Delivery • No',
                          )
                        ]),
                  ),
                  Text('Detail',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: getProportionateScreenHeight(21),
                  ),
                  DetailBox(title: 'Address', subTitle: [
                    Container(
                      child: TextContainer(
                        text: '17A Lamb St, London E1 6EA, United Kingdom',
                        alignmentType: TextAlign.start,
                        height:
                            1.35, //text line spacing height is not relative to device screen
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: getProportionateScreenHeight(24),
                  ),
                  DetailBox(title: 'Hours information', subTitle: [
                    Container(
                      margin: EdgeInsets.only(),
                      alignment: Alignment.centerLeft,
                      height: getProportionateScreenHeight(23),
                      child: Text('Monday - Thursday : 10:00 - 19:00'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: getProportionateScreenHeight(23),
                      child: Text('Friday - Sunday : 09:00 - 22:00'),
                    ),
                  ]),
                  (reviewList.length != 0)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              SizedBox(
                                height: getProportionateScreenHeight(40),
                              ),
                              Text('Reviews',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                height: getProportionateScreenHeight(33),
                              ),
                              ReviewList(
                                reviewObject: reviewList,
                              ),
                            ])
                      : SizedBox(),
                ],
              ),
            ),
          ],
        )),
      ),
    ]));
  }
}
