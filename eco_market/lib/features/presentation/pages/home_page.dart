import 'package:eco_market/features/domain/model/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: '');

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Glavnaya',
      style: optionStyle,
    ),
    Text(
      'Index 1: Korzina',
      style: optionStyle,
    ),
    Text(
      'Index 0: Istotiya',
      style: optionStyle,
    ),
    Text(
      'Index 0: Info',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Эко Маркет',
          style: TextStyle(
              color: Color(0xff1F1F1f),
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'TT Norms Pro'),
        )),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 220),
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(5.5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        categoryList[index].groceryImg,
                        height: 209,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        color: Colors.black26,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    // Text(
                    //   categoryList[index].groceryName,
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.w700,
                    //       fontFamily: ''),
                    // )
                  ],
                ),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
            color: Color(0xffD2D1D5),
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: ''),
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home,
              // color: Color(0xffD2D1D5),
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              // color: Color(0xffD2D1D5)
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              //  color: Color(0xffD2D1D5)
            ),
            label: 'История',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_center_outlined,
              // color: Color(0xffD2D1D5),
            ),
            label: 'Инфо',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff75DB1B),
        onTap: _onItemTapped,
      ),
    );
  }
}
