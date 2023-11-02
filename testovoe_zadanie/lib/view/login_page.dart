import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F4F6),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Авторизация',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf'),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEFEFE),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Логин или почта',
                hintStyle: TextStyle(
                    color: Color(0xffC3C3C3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf')),
          ),
          const Divider(
            color: Color(0xffE0E6ED),
            height: 1,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEFEFE),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Пароль',
                hintStyle: TextStyle(
                    color: Color(0xffC3C3C3),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf')),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4631D2),
                  minimumSize: const Size(343, 64),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(3))),
              child: const Text(
                'Войти',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf',
                    color: Colors.white),
              )),
          const SizedBox(height: 19),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4631D2),
                minimumSize: Size(343, 64),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(3))),
            child: const Text(
              'Зарегистрироваться',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'assets/fonts/Manrope-VariableFont_wght.ttf',
                  color: Colors.white),
            ),
          ),
          Image.asset('assets/image/Rectangle.png')
        ],
      ),
    );
  }
}
