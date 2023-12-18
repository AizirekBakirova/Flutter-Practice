import 'package:eco_market/features/presentation/theme/text_style.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, required this.image});
  final String image;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Продукты',
          style: AppTextStyle.appBarTextStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              cursorHeight: 44,
              cursorWidth: 328,
              decoration: InputDecoration(
                  fillColor: Color(0xffF8F8F8),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xffD2D1D5),
                  hintText: 'Быстрый поиск',
                  hintStyle: TextStyle(
                      color: Color(0xffD2D1D5),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: '')),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          PageView(
            children: [
              TextFormField(
                cursorHeight: 200,
              )
            ],
          )
        ],
      ),
    );
  }
}
