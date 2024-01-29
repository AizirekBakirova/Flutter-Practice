class ListView {
  final String image;

  ListView({required this.image});
}

ListView p1 = ListView(image: 'assets/images/baloons.jpg');
ListView p2 = ListView(image: 'assets/images/kayak.jpg');
ListView p3 = ListView(image: 'assets/images/walk.jpg');
ListView p4 = ListView(image: 'assets/images/parashute.jpg');
ListView p5 = ListView(image: 'assets/images/diving.jpg');

List<ListView> listView = [p1, p2, p3, p4, p5];
