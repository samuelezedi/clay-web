
import 'package:clay/utils/color_palette.dart';
import 'package:clay/widgets/moving_image.dart';
import 'package:flutter/material.dart';

class BannerImage extends StatefulWidget {
  const BannerImage(
      {required this.initialPointX,
      required this.hDrag,
      required this.vDrag,
      super.key});
  final double initialPointX;
  final double vDrag;
  final double hDrag;

  @override
  State<BannerImage> createState() => _BannerImageState();
}

class _BannerImageState extends State<BannerImage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1200) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FractionalTranslation(
              translation: Offset(widget.initialPointX, 0.0),
              child: MovingCardWidget(
                offset: Offset(widget.initialPointX, 15.0),
                vDrag: widget.vDrag,
                hDrag: widget.hDrag,
                image: 'assets/images/home-large.png',
              ),
            ),
            Container(
              height: 100,
              color: Palette.primary,
            )
          ],
        );
      }
      return Container();
    });
  }
}
