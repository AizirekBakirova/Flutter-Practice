import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Лента',
      style: optionStyle,
    ),
    Text(
      'Index 1: Карта',
      style: optionStyle,
    ),
    Text(
      'Index 0: Избранные',
      style: optionStyle,
    ),
    Text(
      'Index 0: Профиль',
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
      backgroundColor: Color(0xffF3F4F6),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Профиль',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf'),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/image/123.png'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Марипбек Чингиз',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            'maripbekoff@gmail.com',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf',
                color: Color(0xff929292)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 400),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Выйти',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(500, 60),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero)),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Лента',
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Карта',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Избранные',
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'Профиль',
              backgroundColor: Colors.blue),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

      // bottomNavigationBar: BottomNavigationBar(

      //     type: BottomNavigationBarType.fixed,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage('assets/image/lenta.png'),
      //           ),
      //           label: 'Лента'),
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage('assets/image/map.png'),
      //           ),
      //           label: 'Карта'),
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage('assets/image/heart.png'),
      //           ),
      //           label: 'Избранные'),
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage('assets/image/profile.png'),
      //           ),
      //           label: 'Профиль'),
      //     ]),
    );
  }
}
