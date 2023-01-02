import 'package:clay/lists.dart';
import 'package:flutter/material.dart';

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

    if (level > 10 || level < 2) {
      //show av
      setState(() {
        navHeight = 100;
      });
    } else {
      setState(() {
        navHeight = 0;
      });
    }

    if (level > 10) {
      setState(() {
        showNavBorder = true;
        navBackColor = Colors.white;
      });
    } else {
      setState(() {
        showNavBorder = false;
        navBackColor = Colors.transparent;
      });
    }

    if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse ||
        _scrollController.position.pixels > currentPos) {
      currentPos = _scrollController.position.pixels;
      // scrolling down

      int index = switchDownOperation(level);
      print('scrolling down $initialPointX');
      setState(() {
        hDrag = list1[index];
        initialPointX = list2[index];
        textColor = list4[index];
        vDrag = list3[index];
      });
    } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward ||
        _scrollController.position.pixels < currentPos) {
      currentPos = _scrollController.position.pixels;
      // scrollig up
      int index = switchUpOperation(level);
      print('scrolling up $index');

      setState(() {
        hDrag = list1[index];
        initialPointX = list2[index];
        textColor = list4[index];
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
        if (constraint.maxWidth < 990) {
          return const DashboardMobile();
        }
        return Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
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
                              BigTextWidget(
                                textColor: Colors.black.withOpacity(textColor),
                              ),
                              const SizedBox(
                                height: 27,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Create great content for your products, brands, and services.\nAll without a designer.',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Halenoir',
                                        color: Colors.black
                                            .withOpacity(textColor)),
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
                                  ))
                            ]),
                      ),
                    ),
                    // const Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: 70),
                    //     child: TopNavigation(color: Colors.transparent)),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FractionalTranslation(
                          translation: Offset(initialPointX, 0.0),
                          child: MovingCardWidget(
                            offset: Offset(initialPointX, 15.0),
                            vDrag: vDrag,
                            hDrag: hDrag,
                            image: 'assets/images/home-large.png',
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
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Row(
                          children: const [
                            Text(
                              'Adored by more than 100,000\nbusinesses, Clay elevates your\nproducts. No design experience\nneeded.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 150,
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