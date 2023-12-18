import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  ChipButton({
    super.key,
    required this.text,
    required this.chooseButton,
  });
  final String text;
  bool favorite = false;
  bool chooseButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: ActionChip(
          onPressed: () {
            favorite = !favorite;
            chooseButton = false;
            print('fruit');
          },
          label: Text(text),
          labelStyle: TextStyle(
              color: Color(0xffD2D1D5),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: ''),
          padding: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Color(0xffd2d1d5), width: 3))),
    );
  }
}
