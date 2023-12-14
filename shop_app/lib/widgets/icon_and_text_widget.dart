import 'package:flutter/material.dart';
import 'package:shop_app/home/main_food_page.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});
  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(text: text)
      ],
    );
  }
}
