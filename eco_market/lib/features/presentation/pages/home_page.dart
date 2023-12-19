import 'package:eco_market/features/presentation/pages/main_grocery_page.dart';
import 'package:eco_market/features/presentation/widgets/bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: const MainGroceryPage(),
      bottomNavigationBar: BottomNavBar(),
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
