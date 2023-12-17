class Categories {
  final String groceryName;
  final String groceryImg;

  Categories({required this.groceryName, required this.groceryImg});
}

Categories fruits =
    Categories(groceryName: 'Фрукты', groceryImg: 'assets/images/fruits.jpeg');

Categories driedFruits = Categories(
    groceryName: 'Сухофрукты', groceryImg: 'assets/images/drfruits.jpg');

Categories vegetables =
    Categories(groceryName: 'Овощи', groceryImg: 'assets/images/vegs.jpg');

Categories greens =
    Categories(groceryName: 'Зелень', groceryImg: 'assets/images/greens.jpg');

Categories coffeeTea = Categories(
    groceryName: 'Чай кофе', groceryImg: 'assets/images/teacof.webp');

Categories dairy = Categories(
    groceryName: 'Молочные продукты', groceryImg: 'assets/images/dairy.jpg');

List<Categories> categoryList = [
  fruits,
  driedFruits,
  vegetables,
  greens,
  coffeeTea,
  dairy
];
