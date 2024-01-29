import 'package:flutter/material.dart';
import 'package:homework/features/presentation/pages/home_page.dart';
import 'package:homework/features/presentation/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/bike.json',
            height: 450, width: 450),
      ),
    );
  }
}
