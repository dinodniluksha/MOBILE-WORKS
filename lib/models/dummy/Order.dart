class OrderList {
  String image;
  String title;
  String duration;
  String rating;
  bool isFavorite;
  bool isSelected;
  String type;

  OrderList(
      {this.image = "",
      this.duration = "",
      this.title = "",
      this.rating = "",
      this.isFavorite = true,
      this.isSelected = false,
      this.type = ""});
}

List<OrderList> orderList = [
  OrderList(
      image: 'assets/images/pizza.png',
      title: 'Primavera Pizza',
      duration: '25 - 30 mins',
      rating: '5.0',
      isFavorite: true,
      isSelected: true,
      type: "GASSHOP"),
  OrderList(
      image: 'assets/images/pizza.png',
      title: 'Cheese Pizza',
      duration: '25 - 30 mins',
      rating: '4.5',
      isFavorite: false,
      isSelected: false,
      type: "GROCERY"),
  OrderList(
      image: 'assets/images/pizza.png',
      title: 'Healthy Salad',
      duration: '25 - 30 mins',
      rating: '4.5',
      isFavorite: true,
      isSelected: false,
      type: "GROCERY"),
  OrderList(
      image: 'assets/images/pizza.png',
      title: 'Grilled Sandwhich',
      duration: '25 - 30 mins',
      rating: '4.0',
      isFavorite: false,
      isSelected: true,
      type: "GROCERY"),
  OrderList(
      image: 'assets/images/pizza.png',
      title: 'Cheese Chowmin',
      duration: '25 - 30 mins',
      rating: '4.0',
      isFavorite: false,
      isSelected: true,
      type: "PHARMACY"),
];
