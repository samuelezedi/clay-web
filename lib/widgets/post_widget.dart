import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
      {required this.image,
      required this.tag,
      required this.time,
      required this.title,
      required this.color,
      required this.fontColor,
      super.key});
  final String image;
  final String title;
  final String tag;
  final String time;
  final Color color;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {},
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: Container(
        height: 500,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: Image.asset(image,fit: BoxFit.cover,)),
                    Container(color: Colors.white,width: 15,)
                  ],
                )),
          ),
          Expanded(
            child: Container(
              // width: 345,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Text(
                          tag.toUpperCase(),
                          style: const TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(title,
                          style: TextStyle(color: fontColor, fontSize: 23)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      time,
                      style: TextStyle(color: fontColor),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
