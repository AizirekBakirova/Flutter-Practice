import 'package:eco_market/features/presentation/theme/text_style.dart';
import 'package:eco_market/features/presentation/widgets/text_form_field_button.dart';
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
      appBar: _appBar(),
      body: TextFormFieldButton(),
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
