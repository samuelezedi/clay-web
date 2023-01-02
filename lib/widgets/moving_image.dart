import 'dart:math';

import 'package:flutter/material.dart';

class MovingCardWidget extends StatefulWidget {
  final String image;
  final double vDrag;
  final double hDrag;
  final Offset offset;

  const MovingCardWidget({
    required this.image,
    required this.vDrag,
    required this.hDrag,
    required this.offset,
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MovingCardWidgetState createState() => _MovingCardWidgetState();
}

class _MovingCardWidgetState extends State<MovingCardWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  bool isFront = true;
  double verticalDrag = -20;
  double horizontalDrag = 20;
  double initialdrap = 0;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) => Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(widget.vDrag / 180 * pi)
          ..rotateZ(widget.hDrag / 180 * pi),
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(left: 40,right: 40,),
          child: Image.asset(
            widget.image,
          ),
        ),
      );

  void setImageSide() {
    if (verticalDrag <= 90 || verticalDrag >= 270) {
      isFront = true;
    } else {
      isFront = false;
    }
  }
}
