class Review {
  String userPhoto;
  String userName;
  String city;
  String metaData;
  int lastReviewPoint;
  int totalReviewPoints;
  String comment;

  Review({
    required this.userPhoto,
    required this.userName,
    required this.city,
    required this.metaData,
    required this.lastReviewPoint,
    required this.totalReviewPoints,
    required this.comment,
  });
}

List<Review> reviewList = [
  Review(
    userPhoto: 'https://i.stack.imgur.com/c12PT.png?s=96&g=1',
    userName: 'Mike Smithson',
    city: 'Boston',
    metaData: 'France • 23 Reviews',
    lastReviewPoint: 2,
    totalReviewPoints: 13,
    comment: '',
  ),
  Review(
    userPhoto: 'https://i.stack.imgur.com/B1qTo.jpg?s=96&g=1',
    userName: 'Toby Markshow',
    city: 'Washington',
    metaData: 'France • 23 Reviews',
    lastReviewPoint: 4,
    totalReviewPoints: 45,
    comment:
        'Make it as easy as possible for your customers to get in touch. If you don’t already, you should consider using a business texting app to reach your customers. So this is very good shop to visit anyone.',
  ),
  Review(
    userPhoto:
        'https://www.gravatar.com/avatar/a2d818d801ce38a33807f68fdd92043a?s=128&d=identicon&r=PG',
    userName: 'Angela Williams',
    city: 'Toronto',
    metaData: 'France • 23 Reviews',
    lastReviewPoint: 1,
    totalReviewPoints: 9,
    comment: '',
  ),
  Review(
    userPhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf3aB0VvJhhXtf3X6tn8auTL72v48Xhih_SIJJYf1mU0_bgWF1Yt-GhVOpPvdbxSkvJZ8&usqp=CAU',
    userName: 'Mark Anthony',
    city: 'Hamilton',
    metaData: 'France • 23 Reviews',
    lastReviewPoint: 3,
    totalReviewPoints: 29,
    comment:
        'Presentation could be a little more creative, but other than that, I would eat here again.',
  ),
  Review(
    userPhoto: 'https://i.stack.imgur.com/neGrD.jpg?s=128&g=1',
    userName: 'Noree Daniyal',
    city: 'London',
    metaData: 'France • 23 Reviews',
    lastReviewPoint: 5,
    totalReviewPoints: 37,
    comment: 'Customer service is good, I have got correct details quickly.',
  ),
];
