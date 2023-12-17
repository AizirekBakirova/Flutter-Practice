class Categories {
  final String groceryName;
  final String groceryImg;

  Categories({required this.groceryName, required this.groceryImg});
}

Categories fruits =
    Categories(groceryName: 'Fruits', groceryImg: 'assets/images/fruits.jpeg');

Categories driedFruits = Categories(
    groceryName: 'Dried Fruits', groceryImg: 'assets/images/drfruits.jpg');

Categories vegetables =
    Categories(groceryName: 'Vegetables', groceryImg: 'assets/images/vegs.jpg');

Categories greens =
    Categories(groceryName: 'Greens', groceryImg: 'assets/images/greens.jpg');

Categories coffeeTea = Categories(
    groceryName: 'Coffee and Tea', groceryImg: 'assets/images/teacof.webp');

Categories dairy =
    Categories(groceryName: 'Dairy', groceryImg: 'assets/images/dairy.jpg');

List<Categories> categoryList = [
  fruits,
  driedFruits,
  vegetables,
  greens,
  coffeeTea,
  dairy
];
