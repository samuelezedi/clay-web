import 'package:clay/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNavigation extends StatefulWidget {
  const TopNavigation({required this.color, super.key});
  final Color color;

  @override
  State<TopNavigation> createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation> {
  bool techHover = false;
  bool careerHover = false;
  bool blogHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: widget.color),
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
      ]),
    );
  }
}
