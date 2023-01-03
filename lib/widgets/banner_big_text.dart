import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({required this.textColor, super.key});
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return Text(
          "Grow your product with stunning content.",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: textColor),
        );
      }

      if (constraint.maxWidth > 700 && constraint.maxWidth < 1100) {
        return Text(
          "Grow your product with stunning content.",
          style: TextStyle(
              fontSize: 70, fontWeight: FontWeight.bold, color: textColor),
        );
      }

      return Text(
        "Grow your product\nwith stunning\ncontent.",
        style: TextStyle(
            fontSize: 90, fontWeight: FontWeight.bold, color: textColor),
      );
    });
  }
}
