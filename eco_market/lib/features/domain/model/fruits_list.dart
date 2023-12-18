class Fruits {
  final String fruitsName;
  final String fruitsImg;

  Fruits({required this.fruitsName, required this.fruitsImg});
}

Fruits apple =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/apple.webp');

Fruits orange =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/orange.jpg');

Fruits kiwi =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/kiwi.webp');

Fruits granat =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/granat.jpg');

Fruits banana =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/banana.webp');

Fruits dracon =
    Fruits(fruitsName: 'Фрукты', fruitsImg: 'assets/fruits/dracon.webp');

List<Fruits> fruitsList = [apple, orange, kiwi, granat, banana, dracon];
