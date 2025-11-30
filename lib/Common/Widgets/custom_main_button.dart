import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  CustomMainButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    this.icon,
  });
  final String text;
  final Color textColor;
  final Color color;
  bool? icon = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(double.infinity, 60),
              backgroundColor: color,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                icon == true
                    ? Icon(Icons.delete_rounded, size: 25, color: Colors.white)
                    : const SizedBox(),
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
