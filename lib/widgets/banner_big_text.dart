import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  const BigTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Grow your product\nwith stunning\ncontent.",
      style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
    );
  }
}
