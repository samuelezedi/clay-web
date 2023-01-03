import 'package:clay/color_palette.dart';
import 'package:clay/widgets/nav_item.dart';
import 'package:flutter/cupertino.dart';
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
  double showMenuH = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return mobile();
      }

      if (constraint.maxWidth > 700 && constraint.maxWidth < 1100) {
        return mobile();
      }

      return web();
    });
  }

  tablet() {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          decoration: const BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Row(children: [
            InkWell(
                hoverColor: Colors.transparent,
                onTap: () {},
                onHover: (value) {},
                child: Image.asset('assets/images/logo.png')),
            Expanded(
              child: Container(),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    showMenuH = showMenuH > 0 ? 0 : 500;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.black),
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 25,
                ))
          ]),
        ),
        AnimatedContainer(
          height: showMenuH,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
          padding: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: const [
                          Text(
                            'Technology',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade500,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Text(
                            'Career',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.grey.shade500,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Text(
                            'Blog',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.apple,
                                color: Colors.white,
                                size: 17,
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 0, backgroundColor: Colors.black),
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'App Store',
                                  style: TextStyle(
                                      color: Palette.primary, fontSize: 17),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                              icon: Icon(
                                CupertinoIcons.play_fill,
                                color: Colors.white,
                                size: 17,
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 0, backgroundColor: Colors.black),
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'Google Play',
                                  style: TextStyle(
                                      color: Palette.primary, fontSize: 17),
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ]),
        )
      ],
    );
  }

  mobile() {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          decoration: const BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Row(children: [
            InkWell(
                hoverColor: Colors.transparent,
                onTap: () {},
                onHover: (value) {},
                child: Image.asset('assets/images/logo.png')),
            Expanded(
              child: Container(),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    showMenuH = showMenuH > 0 ? 0 : 500;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.black),
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 25,
                ))
          ]),
        ),
        AnimatedContainer(
          height: showMenuH,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: const [
                      Text(
                        'Technology',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey.shade500,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text(
                        'Career',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Colors.grey.shade500,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Text(
                        'Blog',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.apple,
                            color: Colors.white,
                            size: 17,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'App Store',
                              style:
                                  TextStyle(color: Palette.primary, fontSize: 17),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                          icon: Icon(
                            CupertinoIcons.play_fill,
                            color: Colors.white,
                            size: 17,
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          label: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Google Play',
                              style:
                                  TextStyle(color: Palette.primary, fontSize: 17),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            )
          ]),
        )
      ],
    );
  }

  web() {
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
        widget.showBottomBorder
            ? ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.black),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  child: Text(
                    'Try Clay for free',
                    style: TextStyle(
                        color: Palette.primary,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ))
            : Container()
      ]),
    );
  }
}
