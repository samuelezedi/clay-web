
import 'package:clay/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ChangingContainer extends StatefulWidget {
  const ChangingContainer({required this.video, super.key});
  final int video;

  @override
  State<ChangingContainer> createState() => _ChangingContainerState();
}

class _ChangingContainerState extends State<ChangingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      color: widget.video == 1
          ? Palette.chacola
          : widget.video == 2
              ? Palette.primary
              : widget.video == 3
                  ? Palette.lightTeal
                  : Palette.lilac,
      child: Center(
          child: widget.video == 1
              ? Image.asset('assets/images/video1.gif',width: 180,)
              : widget.video == 2
                  ? Image.asset('assets/images/video2.gif',
                      width: 180,
                    )
                  : widget.video == 3
                      ? Image.asset('assets/images/video3.gif',
                          width: 180,
                        )
                      : Image.asset('assets/images/video4.gif',
                          width: 180,
                        )),
    );
  }
}
