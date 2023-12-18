import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  ChipButton({
    super.key,
    required this.text,
  });
  final String text;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ActionChip(
          onPressed: () {
            favorite = !favorite;
          },
          label: Text(text),
          labelStyle: const TextStyle(
              color: Color(0xffD2D1D5),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: ''),
          padding: const EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Color(0xffd2d1d5), width: 3))),
    );
  }
}
