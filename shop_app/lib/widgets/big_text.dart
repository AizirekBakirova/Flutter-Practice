import 'package:flutter/material.dart';
import 'package:flutter_test_application/theme/dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  BigText(
      {super.key,
      this.color = const Color(0xff332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.size = 0,
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
          fontFamily: 'Urbanist',
          fontSize: size == 0 ? Dimensions.font20 : size),
    );
  }
}
