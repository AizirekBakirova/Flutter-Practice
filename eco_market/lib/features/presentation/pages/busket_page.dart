import 'package:flutter/material.dart';

class BusketPage extends StatefulWidget {
  const BusketPage({super.key});

  @override
  State<BusketPage> createState() => _BusketPageState();
}

class _BusketPageState extends State<BusketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
    );
  }
}
