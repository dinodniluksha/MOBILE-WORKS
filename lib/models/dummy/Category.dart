class CategoryList {
  String image;
  String title;
  String type;
  CategoryList({
    this.image = "",
    this.title = "",
    this.type = "",
  });
}

List<CategoryList> categoryList = [
  CategoryList(
    image: 'assets/icons/pizza.svg',
    title: 'Grocery',
    type: 'GROCERY',
  ),
  CategoryList(
    image: 'assets/icons/sea-food.svg',
    title: 'GAS',
    type: 'GASSHOP',
  ),
  CategoryList(
    image: 'assets/icons/coke.svg',
    title: 'Pharmacy',
    type: 'PHARMACY',
  ),
  CategoryList(
    image: 'assets/icons/pizza.svg',
    title: 'Meat Shops',
    type: 'MEATSHOP',
  ),
  CategoryList(
    image: 'assets/icons/coke.svg',
    title: 'Bakery',
    type: 'BAKERY',
  ),
  CategoryList(
    image: 'assets/icons/sea-food.svg',
    title: 'Hardware',
    type: 'HARDWARE',
  ),
  CategoryList(
    image: 'assets/icons/coke.svg',
    title: 'Book Shops',
    type: 'BOOKSHOP',
  ),
];
