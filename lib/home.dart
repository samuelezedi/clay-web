import 'dart:math';

import 'package:clay/color_palette.dart';
import 'package:clay/lists.dart';
import 'package:clay/widgets/banner_big_text.dart';
import 'package:clay/widgets/changing_container.dart';
import 'package:clay/widgets/moving_image.dart';
import 'package:clay/widgets/top_nav.dart';
import 'package:clay/widgets/video_section.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'extensions/double_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offsetAnimation;
  late ScrollController _scrollController;

  double initialPointX = list2[0];
  double initialPointY = 0.0;
  double hDrag = list1[0];
  double vDrag = list3[0];

  int videoSelected = 1;
  double height = 130;

  double getNewValue(double offset) {
    double cWidth = (offset * screenHeight / 100) / 1000;
    print(cWidth);
    return cWidth;
  }

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  int switchDownOperation(double value) {
    if (value <= 1) {
      return 0;
    } else if (value <= 2) {
      return 1;
    } else if (value <= 3) {
      return 2;
    } else if (value <= 4) {
      return 3;
    } else if (value <= 5) {
      return 4;
    } else if (value <= 6) {
      return 5;
    } else if (value <= 7) {
      return 6;
    } else if (value <= 8) {
      return 7;
    } else if (value <= 9) {
      return 8;
    } else if (value <= 10) {
      return 9;
    }
    return 9;
  }

  int switchUpOperation(double value) {
    if (value >= 10) {
      return 9;
    } else if (value >= 9) {
      return 8;
    } else if (value >= 8) {
      return 7;
    } else if (value >= 7) {
      return 6;
    } else if (value >= 6) {
      return 5;
    } else if (value >= 5) {
      return 4;
    } else if (value >= 4) {
      return 3;
    } else if (value >= 3) {
      return 2;
    } else if (value >= 2) {
      return 1;
    } else if (value >= 1) {
      return 0;
    }
    return 0;
  }

  _scrollListener() {
    double level = getNewValue(_scrollController.offset);

    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      // scrolling down

      int index = switchDownOperation(level);
      print('scrolling down $initialPointX');
      setState(() {
        hDrag = list1[index];
        initialPointX = list2[index];
        vDrag = list3[index];
      });
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      // scrollig up
      int index = switchUpOperation(level);
      print('scrolling up $index');

      setState(() {
        hDrag = list1[index];
        initialPointX = list2[index];
        vDrag = list3[index];
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  double itemHeight = 200;
  double itemsCount = 20;
  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Palette.primary,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 1000,
                decoration: BoxDecoration(
                  color: Palette.primary,
                ),
                child: Image.asset('assets/images/line.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: SizedBox(
                  height: 1000,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        const BigTextWidget(),
                        const SizedBox(
                          height: 27,
                        ),
                        Row(
                          children: const [
                            Text(
                              'Create great content for your products, brands, and services.\nAll without a designer.',
                              style: TextStyle(
                                  fontSize: 24, fontFamily: 'Halenoir'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 19, horizontal: 20),
                              child: Text(
                                'Try Clay for free',
                                style: TextStyle(
                                    color: Palette.primary,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ]),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: TopNavigation(color: Colors.transparent)),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Positioned(
                    left: 0.0,
                    right: 0.0,
                    child: FractionalTranslation(
                      translation: Offset(initialPointX, 0.0),
                      child: MovingCardWidget(
                        offset: Offset(initialPointX, 15.0),
                        vDrag: vDrag,
                        hDrag: hDrag,
                        image: 'assets/images/home-large.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Palette.primary,
                  )
                ],
              ),
            ]),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    children: const [
                      Text(
                        'Adored by more than 100,000\nbusinesses, Clay elevates your\nproducts. No design experience\nneeded.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 80,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  height: 650,
                  decoration: BoxDecoration(
                      color: Palette.chacola,
                      borderRadius: BorderRadius.circular(2)),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(50),
                      width: MediaQuery.of(context).size.width * 0.38,
                      child: Column(children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/eleuteri.png'))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'Eleuteri',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Vintage Jewelry',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Flexible(
                              child: Text(
                                '"Communicating the beauty and\nelegance of physical art online is never\neasy, Clay turns our products into digital\nart, allowing a seamless transition\nbetween two worlds, completing the\nimmersion."',
                                style: TextStyle(
                                    fontSize: 23, color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            'assets/images/woman.jpeg',
                          ),
                          fit: BoxFit.cover,
                        )),
                      ),
                    )
                  ]),
                ),
                const SizedBox(
                  height: 150,
                )
              ]),
            ),
            const Divider(
              height: 0.7,
            ),
            const VideoSection()
          ],
        ),
      ),
    );
  }
}
