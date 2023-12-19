import 'package:eco_market/features/domain/model/fruits_list.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextFormFieldButton(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChipButton(
                    text: 'Все',
                  ),
                  ChipButton(
                    text: 'Фрукты',
                  ),
                  ChipButton(
                    text: 'Сухофрукты',
                  ),
                  ChipButton(
                    text: 'Овощи',
                  ),
                  ChipButton(
                    text: 'Зелень',
                  ),
                  ChipButton(
                    text: 'Чай кофе',
                  ),
                  ChipButton(
                    text: 'Молочные продукты',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      mainAxisExtent: 230),
                  itemCount: fruitsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xfff8f8f8)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Image.asset(
                                fruitsList[index].fruitsImg,
                                height: 96,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Яблоко золотая радуга',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '56 c',
                                  style: TextStyle(
                                      color: Color(0xff75db1b),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff75db1b),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    'Добавить',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
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
