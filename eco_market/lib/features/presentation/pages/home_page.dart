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
      appBar: AppBar(
        title: Center(
            child: Text(
          'Eco Market',
          style: TextStyle(
              color: Color(0xff1F1F1f),
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'TT Norms Pro'),
        )),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                width: 159,
                color: Colors.red,
                // color: Color(0xffFFFFFF),
                child: Column(
                  children: [
                    Text(''),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
