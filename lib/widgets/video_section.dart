import 'package:clay/widgets/changing_container.dart';
import 'package:clay/widgets/expandable_item.dart';
import 'package:flutter/material.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({super.key});

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  double height1 = 205;
  double height2 = 130;
  double height3 = 130;
  double height4 = 130;
  double height1m = 130;
  double height2m = 70;
  double height3m = 70;
  double height4m = 70;
  int videoSelected = 1;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return mobile();
      }

      if (constraint.maxWidth > 700 && constraint.maxWidth < 1100) {
        //tablet
        return tablet();
      }

      return web();
    });
  }

  mobile() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'You amazing products deserve amazing content.',
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
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: ChangingContainer(
                  video: videoSelected,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                // height: 50,
                child: Column(children: [
                  ExpandableItem(
                      image: 'assets/images/star.png',
                      title: 'Precise background removal',
                      fontSize: 17,
                      subFS: 15,
                      iconSize: 20,
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height1,
                      onTap: (value) {
                        setState(() {
                          height1 = 205;
                          height2 = 130;
                          height3 = 130;
                          height4 = 130;
                          videoSelected = 1;
                        });
                      }),
                  ExpandableItem(
                      fontSize: 17,
                      subFS: 15,
                      iconSize: 20,
                      image: 'assets/images/anima.png',
                      title: 'Powerful animations',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height2,
                      onTap: (value) {
                        setState(() {
                          height2 = 205;
                          height1 = 130;
                          height3 = 130;
                          height4 = 130;
                          videoSelected = 2;
                        });
                      }),
                  ExpandableItem(
                      fontSize: 17,
                      subFS: 15,
                      iconSize: 20,
                      image: 'assets/images/switch.png',
                      title: 'Professional color grading',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height3,
                      onTap: (value) {
                        setState(() {
                          height3 = 205;
                          height1 = 130;
                          height2 = 130;

                          height4 = 130;
                          videoSelected = 3;
                        });
                      }),
                  ExpandableItem(
                      fontSize: 17,
                      subFS: 15,
                      iconSize: 20,
                      image: 'assets/images/eclipse.png',
                      title: 'Advanced masking',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height4,
                      onTap: (value) {
                        setState(() {
                          height4 = 205;
                          height1 = 130;
                          height2 = 130;
                          height3 = 130;
                          videoSelected = 4;
                        });
                      })
                ]),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 140,
        )
      ]),
    );
  }

  tablet() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'You amazing products deserve amazing content.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 65,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 150,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: ChangingContainer(
                  video: videoSelected,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                // height: 50,
                child: Column(children: [
                  ExpandableItem(
                      image: 'assets/images/star.png',
                      title: 'Precise background removal',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height1,
                      onTap: (value) {
                        setState(() {
                          height1 = 205;
                          height2 = 130;
                          height3 = 130;
                          height4 = 130;
                          videoSelected = 1;
                        });
                      }),
                  ExpandableItem(
                      image: 'assets/images/anima.png',
                      title: 'Powerful animations',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height2,
                      onTap: (value) {
                        setState(() {
                          height2 = 205;
                          height1 = 130;
                          height3 = 130;
                          height4 = 130;
                          videoSelected = 2;
                        });
                      }),
                  ExpandableItem(
                      image: 'assets/images/switch.png',
                      title: 'Professional color grading',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height3,
                      onTap: (value) {
                        setState(() {
                          height3 = 205;
                          height1 = 130;
                          height2 = 130;

                          height4 = 130;
                          videoSelected = 3;
                        });
                      }),
                  ExpandableItem(
                      image: 'assets/images/eclipse.png',
                      title: 'Advanced masking',
                      subText:
                          'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                      height: height4,
                      onTap: (value) {
                        setState(() {
                          height4 = 205;
                          height1 = 130;
                          height2 = 130;
                          height3 = 130;
                          videoSelected = 4;
                        });
                      })
                ]),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 140,
        )
      ]),
    );
  }

  web() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'You amazing products deserve\namazing content.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 70,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 150,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              Expanded(
                child: ChangingContainer(
                  video: videoSelected,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: SizedBox(
                  child: Column(children: [
                    ExpandableItem(
                        image: 'assets/images/star.png',
                        title: 'Precise background removal',
                        subText:
                            'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                        height: height1,
                        onTap: (value) {
                          setState(() {
                            height1 = 205;
                            height2 = 130;
                            height3 = 130;
                            height4 = 130;
                            videoSelected = 1;
                          });
                        }),
                    ExpandableItem(
                        image: 'assets/images/anima.png',
                        title: 'Powerful animations',
                        subText:
                            'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                        height: height2,
                        onTap: (value) {
                          setState(() {
                            height2 = 205;
                            height1 = 130;
                            height3 = 130;
                            height4 = 130;
                            videoSelected = 2;
                          });
                        }),
                    ExpandableItem(
                        image: 'assets/images/switch.png',
                        title: 'Professional color grading',
                        subText:
                            'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                        height: height3,
                        onTap: (value) {
                          setState(() {
                            height3 = 205;
                            height1 = 130;
                            height2 = 130;

                            height4 = 130;
                            videoSelected = 3;
                          });
                        }),
                    ExpandableItem(
                        image: 'assets/images/eclipse.png',
                        title: 'Advanced masking',
                        subText:
                            'Leverage our background removal tool and extract the beauty out of your product to attract and engage users.',
                        height: height4,
                        onTap: (value) {
                          setState(() {
                            height4 = 205;
                            height1 = 130;
                            height2 = 130;
                            height3 = 130;
                            videoSelected = 4;
                          });
                        })
                  ]),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 140,
        )
      ]),
    );
  }
}
