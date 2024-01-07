import 'package:eco_market/features/presentation/pages/busket_page.dart';
import 'package:eco_market/features/presentation/pages/history_page.dart';
import 'package:eco_market/features/presentation/pages/info_page.dart';
import 'package:eco_market/features/presentation/pages/main_grocery_page.dart';
import 'package:eco_market/features/presentation/theme/app_colors.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final pages = [
    const HomePage(),
    const BusketPage(),
    const HistoryPage(),
    const InfoPage()
  ];

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _myAppBar(),
        body: MainGroceryPage(),
        // IndexedStack(index: currentIndex, children: pages),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.selectedItemColor,
          unselectedItemColor: AppColors.unselectedItemColor,
          unselectedLabelStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: 'История',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help_center_outlined,
              ),
              label: 'Инфо',
            ),
          ],
        ));
  }

  AppBar _myAppBar() {
    return AppBar(
      title: const Center(
          child: Text(
        'Эко-Маркет',
        style: TextStyle(
            color: Color(0xff1F1F1f),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'TT Norms Pro'),
      )),
    );
  }
}
