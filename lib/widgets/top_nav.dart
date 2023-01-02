
import 'package:clay/color_palette.dart';
import 'package:clay/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class TopNavigation extends StatefulWidget {
  const TopNavigation(
      {required this.color,
      required this.height,
      this.showBottomBorder = false,
      super.key});
  final Color color;
  final bool showBottomBorder;
  final double height;

  @override
  State<TopNavigation> createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  bool techHover = false;
  bool careerHover = false;
  bool blogHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      padding: const EdgeInsets.symmetric(horizontal: 70),
      height: widget.height,
      decoration: BoxDecoration(
          color: widget.color,
          border: Border(
              bottom: BorderSide(
                  color: !widget.showBottomBorder
                      ? Colors.transparent
                      : Colors.grey,
                  width: 0.5))),
      child: Row(children: [
        InkWell(
            hoverColor: Colors.transparent,
            onTap: () {},
            onHover: (value) {},
            child: Image.asset('assets/images/logo.png')),
        const SizedBox(
          width: 40,
        ),
        NavItem(
            title: 'Technology',
            hover: techHover,
            onHovered: (value) {
              setState(() {
                techHover = value;
              });
            }),
        const SizedBox(
          width: 40,
        ),
        NavItem(
            title: 'Career',
            hover: careerHover,
            onHovered: (value) {
              setState(() {
                careerHover = value;
              });
            }),
        const SizedBox(
          width: 40,
        ),
        NavItem(
            title: 'Blog',
            hover: blogHover,
            onHovered: (value) {
              setState(() {
                blogHover = value;
              });
            }),
        Expanded(
          child: Container(),
        ),
        widget.showBottomBorder ? ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.black),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
              child: Text(
                'Try Clay for free',
                style: TextStyle(
                    color: Palette.primary,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )) : Container()
      ]),
    );
  }
}
