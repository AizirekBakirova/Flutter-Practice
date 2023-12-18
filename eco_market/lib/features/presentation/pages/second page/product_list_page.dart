import 'package:eco_market/features/presentation/theme/app_size.dart';
import 'package:eco_market/features/presentation/theme/text_style.dart';
import 'package:eco_market/features/presentation/widgets/chip_button.dart';
import 'package:eco_market/features/presentation/widgets/text_form_field_button.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, required this.image});
  final String image;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  bool chooseButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          TextFormFieldButton(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ChipButton(
                  text: 'Все',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Фрукты',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Сухофрукты',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Овощи',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Зелень',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Чай кофе',
                  chooseButton: chooseButton,
                ),
                ChipButton(
                  text: 'Молочные продукты',
                  chooseButton: chooseButton,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Продукты',
        style: AppTextStyle.appBarTextStyle,
      ),
    );
  }
}
