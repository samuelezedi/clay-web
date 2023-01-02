import 'package:clay/color_palette.dart';
import 'package:flutter/material.dart';

class ExpandableItem extends StatefulWidget {
  const ExpandableItem(
      {required this.height,
      required this.onTap,
      required this.image,
      required this.subText,
      required this.title,
      super.key});
  final double height;
  final Function(double height) onTap;
  final String image;
  final String title;
  final String subText;

  @override
  State<ExpandableItem> createState() => _ExpandableItemState();
}

class _ExpandableItemState extends State<ExpandableItem> {
  double height = 130;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      height = widget.height;
    });
    return InkWell(
      onTap: () {
        widget.onTap(height);
      },
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: AnimatedContainer(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          decoration: BoxDecoration(
              color: height == 130 ? Colors.transparent : Palette.lightGrey,
              borderRadius: BorderRadius.circular(5)),
          duration: const Duration(milliseconds: 300),
          child: Column(children: [
            Stack(
              children: [
                Row(children: [
                  Image.asset(
                    widget.image,
                    width: 25,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ]),
              ],
            ),
            if (height != 130)
              const SizedBox(
                height: 30,
              ),
            if (height != 130)
              Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.subText,
                      style: const TextStyle(fontSize: 20),
                    ),
                  )
                ],
              )
          ])),
    );
  }
}
