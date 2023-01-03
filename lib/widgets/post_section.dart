
import 'package:clay/utils/color_palette.dart';
import 'package:clay/widgets/post_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostSection extends StatelessWidget {
  PostSection({super.key});

  List<Map<String, String>> list = [
    {
      "image": "assets/images/instagram1.jpeg",
      "tag": "Social Media",
      "title": "How Your Brand's Color Makes Your Customer Feel",
      "time": "8 mins read",
    },
    {
      "image": "assets/images/instagram2.jpeg",
      "tag": "Instagram",
      "title": "How Often Do You Feel Need To Post on Instagram",
      "time": "8 mins read",
    },
    {
      "image": "assets/images/instagram3.jpeg",
      "tag": "Instagram",
      "title": "How To Write \"Thumb-Stopping\" Instagram Captions",
      "time": "8 mins read",
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
            children: [
              Expanded(
                child: PostWidget(
                    image: list[0]['image'].toString(),
                    tag: list[0]['tag'].toString(),
                    time: list[0]['time'].toString(),
                    title: list[0]['title'].toString(),
                    color: Palette.pinkPurple,
                    fontColor: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: PostWidget(
                    image: list[1]['image'].toString(),
                    tag: list[1]['tag'].toString(),
                    time: list[1]['time'].toString(),
                    title: list[1]['title'].toString(),
                    color: Palette.lightYellow,
                    fontColor: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: PostWidget(
                    image: list[2]['image'].toString(),
                    tag: list[2]['tag'].toString(),
                    time: list[2]['time'].toString(),
                    title: list[2]['title'].toString(),
                    color: Palette.orane,
                    fontColor: Colors.black),
              ),
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
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'Tutorials and insights for your brand',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Expanded(
                child: PostWidget(
                    image: list[0]['image'].toString(),
                    tag: list[0]['tag'].toString(),
                    time: list[0]['time'].toString(),
                    title: list[0]['title'].toString(),
                    color: Palette.pinkPurple,
                    fontColor: Colors.white),
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: PostWidget(
                    image: list[1]['image'].toString(),
                    tag: list[1]['tag'].toString(),
                    time: list[1]['time'].toString(),
                    title: list[1]['title'].toString(),
                    color: Palette.lightYellow,
                    fontColor: Colors.black),
              ),
              // const SizedBox(
              //   width: 40,
              // ),
              // Expanded(
              //   child: PostWidget(
              //       image: list[2]['image'].toString(),
              //       tag: list[2]['tag'].toString(),
              //       time: list[2]['time'].toString(),
              //       title: list[2]['title'].toString(),
              //       color: Palette.orane,
              //       fontColor: Colors.black),
              // )
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Expanded(
                child: PostWidget(
                    image: list[2]['image'].toString(),
                    tag: list[2]['tag'].toString(),
                    time: list[2]['time'].toString(),
                    title: list[2]['title'].toString(),
                    color: Palette.orane,
                    fontColor: Colors.black),
              ),
              Expanded(child: Container())
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
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: const [
              Flexible(
                child: Text(
                  'Tutorials and insights\nfor your brand',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              Expanded(
                child: PostWidget(
                    image: list[0]['image'].toString(),
                    tag: list[0]['tag'].toString(),
                    time: list[0]['time'].toString(),
                    title: list[0]['title'].toString(),
                    color: Palette.pinkPurple,
                    fontColor: Colors.white),
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: PostWidget(
                    image: list[1]['image'].toString(),
                    tag: list[1]['tag'].toString(),
                    time: list[1]['time'].toString(),
                    title: list[1]['title'].toString(),
                    color: Palette.lightYellow,
                    fontColor: Colors.black),
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: PostWidget(
                    image: list[2]['image'].toString(),
                    tag: list[2]['tag'].toString(),
                    time: list[2]['time'].toString(),
                    title: list[2]['title'].toString(),
                    color: Palette.orane,
                    fontColor: Colors.black),
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
