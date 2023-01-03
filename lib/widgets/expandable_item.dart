import 'package:clay/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ExpandableItem extends StatefulWidget {
  const ExpandableItem(
      {required this.height,
      required this.onTap,
      required this.image,
      required this.subText,
      required this.title,
      this.iconSize = 25,
      this.fontSize = 24,
      this.subFS = 20,
      super.key});
  final double height;
  final Function(double height) onTap;
  final String image;
  final String title;
  final String subText;
  final double iconSize;
  final double fontSize;
  final double subFS; //sub font size

  @override
  State<ExpandableItem> createState() => _ExpandableItemState();
}

class _ExpandableItemState extends State<ExpandableItem> {
  double longHeightM = 130;
  double longHeightW = 205;
  double height = 70;
  @override
  void initState() {
    setH();
    super.initState();
  }

  setH() {
    setState(() {
      height = widget.height;
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      height = widget.height;
    });
    return LayoutBuilder(builder: (context, constraint) {
      // if (constraint.maxWidth < 700) {
      //   return mobile();
      // }

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
                      width: widget.iconSize,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontSize: widget.fontSize,
                          fontWeight: FontWeight.w700),
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
                        style: TextStyle(fontSize: widget.subFS),
                      ),
                    )
                  ],
                )
            ])),
      );
    });
  }

  mobile() {
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
              color: height == longHeightM
                  ? Colors.transparent
                  : Palette.lightGrey,
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
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                ]),
              ],
            ),
            if (height != longHeightM)
              const SizedBox(
                height: 30,
              ),
            if (height != longHeightM)
              Row(
                children: [
                  Flexible(
                    child: Text(
                      widget.subText,
                      style: const TextStyle(fontSize: 17),
                    ),
                  )
                ],
              )
          ])),
    );
  }
}
