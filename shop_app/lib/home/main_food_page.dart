import 'package:flutter/material.dart';
import 'package:shop_app/home/food_page_body.dart';

import 'package:shop_app/theme/app_colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'Kyrgyzstan',
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Bishkek',
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      // ignore: sort_child_properties_last
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  SmallText(
      {super.key,
      this.color = const Color(0xffccc7c5),
      this.size = 12,
      this.height = 1.2,
      required this.text});
  Color? color;
  final String text;
  double size;
  double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  BigText(
      {super.key,
      this.color = const Color(0xff332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.size = 20,
      required this.text});
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: size),
    );
  }
}
