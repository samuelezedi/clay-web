import 'package:clay/color_palette.dart';
import 'package:clay/home.dart';
import 'package:clay/lists.dart';
import 'package:clay/tablet/home.dart';
import 'package:clay/widgets/banner_big_text.dart';
import 'package:clay/widgets/banner_image.dart';
import 'package:clay/widgets/footer_section.dart';
import 'package:clay/widgets/post_section.dart';
import 'package:clay/widgets/review_section.dart';
import 'package:clay/widgets/team_section.dart';
import 'package:clay/widgets/top_nav.dart';
import 'package:clay/widgets/video_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offsetAnimation;
  late ScrollController _scrollController;

  double initialPointX = list2[0];
  double initialPointY = 0.0;
  double hDrag = list1[0];
  double vDrag = list3[0];
  double textColor = list4[0];

  int videoSelected = 1;
  double height = 130;
  double currentPos = 0;
  bool showNavBorder = false; // this is also used for the floating btn
  bool showNav = true;
  Color navBackColor = Colors.transparent;
  double navHeight = 100;
  double currentPosition = 0.0;

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
    currentPosition = level;

    if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse ||
        _scrollController.position.pixels > currentPos) {
      currentPos = _scrollController.position.pixels;
      // scrolling down

      print('scrolling down ');
    } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward ||
        _scrollController.position.pixels < currentPos) {
      currentPos = _scrollController.position.pixels;
      // scrollig up

      print('scrolling up ');
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
      floatingActionButton: showNavBorder
          ? InkWell(
              onTap: () {
                // setState(() {
                //   hDrag = list1[0];
                //   initialPointX = list2[0];
                //   vDrag = list3[0];
                // });

                _scrollController
                    .animateTo(0,
                        duration:
                            Duration(seconds: currentPosition < 30 ? 1 : 3),
                        curve: Curves.easeIn)
                    .asStream()
                    .listen(_scrollListener());
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Palette.chacola,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Center(
                    child: Icon(
                  Icons.arrow_upward_rounded,
                  color: Colors.white,
                )),
              ),
            )
          : Container(),
      body: LayoutBuilder(builder: (context, constraint) {
        if (constraint.maxWidth > 1100) {
          //web
          return const HomePage();
        }

        if (constraint.maxWidth > 700 && constraint.maxHeight < 110) {
          //tablet
          return const TabletHome();
        }

        return Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      // height: 1000,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 150,
                            ),
                            BigTextWidget(
                              textColor: Colors.black.withOpacity(textColor),
                            ),
                            const SizedBox(
                              height: 27,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Create great content for your products, brands, and services. All without a designer.',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Halenoir',
                                        color:
                                            Colors.black.withOpacity(textColor)),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor:
                                        Colors.black.withOpacity(textColor)),
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
                                )),
                            const SizedBox(
                              height: 100,
                            ),
                            Image.asset('assets/images/heard-large-small.png'),
                            const SizedBox(
                              height: 100,
                            ),
                          ]),
                    ),
                  ),
                  // const Padding(
                  //     padding: EdgeInsets.symmetric(horizontal: 70),
                  //     child: TopNavigation(color: Colors.transparent)),

                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: const [
                            Flexible(
                              child: Text(
                                'Adored by more than 100,000 businesses, Clay elevates your products. No design experience needed.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        // height: 650,
                        decoration: BoxDecoration(
                            color: Palette.chacola,
                            borderRadius: BorderRadius.circular(2)),
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                            // width: MediaQuery.of(context).size.width * 0.38,
                            child: Column(children: [
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/eleuteri.png'))),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      const SizedBox(
                                        height: 5,
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
                                      '"Communicating the beauty and elegance of physical art online is never easy, Clay turns our products into digital art, allowing a seamless transition between two worlds, completing the immersion."',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ]),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'assets/images/woman.jpeg',
                              ),
                              fit: BoxFit.cover,
                            )),
                            child: Image.asset('assets/images/woman.jpeg'),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 80,
                      )
                    ]),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const VideoSection(),
                  const Divider(
                    height: 1,
                  ),
                  const ReviewSection(),
                  const Divider(
                    height: 1,
                  ),
                  PostSection(),
                  const Divider(
                    height: 1,
                  ),
                  const TeamSection(),
                  const FooterSection()
                ],
              ),
            ),
            TopNavigation(
              color: navBackColor,
              showBottomBorder: showNavBorder,
              height: navHeight,
            )
          ],
        );
      }),
    );
  }
}
