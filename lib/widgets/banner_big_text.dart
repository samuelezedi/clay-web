import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({required this.textColor, super.key});
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Grow your product\nwith stunning\ncontent.",
      style: TextStyle(
          fontSize: 90, fontWeight: FontWeight.bold, color: textColor),
    );
  }
}
