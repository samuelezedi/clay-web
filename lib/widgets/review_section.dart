import 'package:clay/entities/review.dart';
import 'package:clay/extensions/list_extension.dart';
import 'package:clay/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatefulWidget {
  const ReviewSection({super.key});

  @override
  State<ReviewSection> createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  ScrollController controller = ScrollController();
  List<Map<String, String>> list = [
    {
      "name": "Iammaria",
      "title": "I love it",
      "text":
          "very excited about the application! Everything is clear and simple. User-friendly design, nothing intrusive, nothing tiresome or distracting. you work and enjoy it"
    },
    {
      "name": "Hanna Handerson",
      "title": "#1",
      "text":
          "If you want to have cool posts that attract followers on social networks, Clay is my recommendation. The application is wow, the fonts it offers are great, even without the pro version, you can get attractive posts."
    },
    {
      "name": "Henrin",
      "title": "Worth paying money",
      "text":
          "I only used the free version but it’s fashionable and on top of that, full of things that make me think “I wish I could do this\"."
    },
    {
      "name": "cat_0046",
      "title": "Very good !!!",
      "text":
          "Very high quality, bright, good pictures come out. I fell in love with it from the first use."
    },
    {
      "name": "Sofia_Rooot",
      "title": "Best App",
      "text": "Fast and practical not to mention that the fonts are beautiful."
    },
    {
      "name": "isedyraed",
      "title": "Easy to use",
      "text":
          "I’m a newbie at Instagram and found this cute and helpful app. Easy to use! I like that it saved to my camera roll."
    },
    {
      "name": "Laura-nes-123",
      "title": "Amazing app",
      "text":
          "So easy to make stories! Plenty of free fonts which I really appreciated! Fab!"
    },
    {
      "name": "chbena",
      "title": "Clay <3",
      "text":
          "Clay is an amazing app and I can make a lot of collages and other things with this app!!!I have been looking for a good app and I think I found it thank you!!!"
    },
  ];
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
      color: Colors.white,
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
                  'Read what our users think about us.',
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
        SizedBox(
          height: 400,
          child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                if (!list.isLastIndex(index)) {
                  return const SizedBox(
                    width: 25,
                  );
                }

                return const SizedBox(
                  width: 0,
                );
              },
              itemCount: list.length,
              itemBuilder: (context, index) {
                final data = ReviewModel.fromJson(list[index]);
                return Container(
                  width: 400,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Palette.lightGrey),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/stars.png',
                          width: 150,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          data.title,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(
                              data.text,
                              style: const TextStyle(fontSize: 18),
                            )),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                );
              }),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset - 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset + 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        )
      ]),
    );
  }

  tablet() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        const SizedBox(
          height: 130,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'Read what our users think about us.',
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
          height: 130,
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                if (!list.isLastIndex(index)) {
                  return const SizedBox(
                    width: 25,
                  );
                }

                return const SizedBox(
                  width: 0,
                );
              },
              itemCount: list.length,
              itemBuilder: (context, index) {
                final data = ReviewModel.fromJson(list[index]);
                return Container(
                  width: 400,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Palette.lightGrey),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/stars.png',
                          width: 150,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          data.title,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(
                              data.text,
                              style: const TextStyle(fontSize: 18),
                            )),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                );
              }),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset - 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset + 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 130,
        )
      ]),
    );
  }

  web() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        const SizedBox(
          height: 130,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'Read what our users think about us.',
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
          height: 130,
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
              controller: controller,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                if (!list.isLastIndex(index)) {
                  return const SizedBox(
                    width: 25,
                  );
                }

                return const SizedBox(
                  width: 0,
                );
              },
              itemCount: list.length,
              itemBuilder: (context, index) {
                final data = ReviewModel.fromJson(list[index]);
                return Container(
                  width: 400,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Palette.lightGrey),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/stars.png',
                          width: 150,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          data.title,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(
                              data.text,
                              style: const TextStyle(fontSize: 18),
                            )),
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Row(
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                );
              }),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset - 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () {
                  double offset = controller.offset + 400;
                  controller.animateTo(offset,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Palette.lightGrey),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 130,
        )
      ]),
    );
  }
}
