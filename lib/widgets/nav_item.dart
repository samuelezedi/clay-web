import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem(
      {required this.title,
      required this.hover,
      required this.onHovered,
      super.key});
  final String title;
  final bool hover;
  final Function(bool value) onHovered;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        onHovered(value);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: hover ? Colors.black : Colors.transparent,width: 2))),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Text(title,style: const TextStyle(fontSize: 16,fontFamily: 'Arial',fontWeight: FontWeight.w300),),
      ),
    );
  }
}
