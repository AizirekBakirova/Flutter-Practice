import 'package:flutter/material.dart';

class TextFormFieldButton extends StatelessWidget {
  const TextFormFieldButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
