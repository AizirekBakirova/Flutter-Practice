import 'package:eco_market/features/presentation/pages/main%20page/main_grocery_page.dart';
import 'package:eco_market/features/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: const MainGroceryPage(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: ''),
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: Color(0xffD2D1D5),
              ),
              label: 'Главная',
              backgroundColor: Colors.black38),
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
        selectedItemColor: AppColors.bottomNavBarColor,
        onTap: _onItemTapped,
      ),
    );
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
