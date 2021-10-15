import 'package:flutter/material.dart';
import 'package:grocerya/screens/shop_view/components/review_card.dart';

class ReviewList extends StatelessWidget {
  final dynamic reviewObject;
  const ReviewList({Key? key, required this.reviewObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> reviewArray = [];

    for (int i = 0; i < reviewObject.length; i++) {
      var city = reviewObject[i].city;
      var totalPoint = reviewObject[i].totalReviewPoints;
      reviewArray.add(ReviewCard(
        userPhoto: reviewObject[i].userPhoto,
        title: reviewObject[i].userName,
        subTitle: [
          Text('$city • $totalPoint Reviews', style: TextStyle(fontSize: 12))
        ],
        comment: reviewObject[i].comment,
        lastReviewPoint: reviewObject[i].lastReviewPoint,
      ));
    }

    return Container(
      child: Column(
        children: reviewArray,
      ),
    );
  }
}
