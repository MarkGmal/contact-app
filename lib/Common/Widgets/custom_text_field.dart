import 'package:flutter/material.dart';

import '../Consts/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        iconColor: Colors.white,
        enabledBorder: _getBorder(),
        focusedBorder: _getBorder(),
        border: _getBorder(),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

OutlineInputBorder _getBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: AppColorS.goldColor, width: 1.5),
  );
}
