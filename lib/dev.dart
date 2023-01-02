import 'package:clay/color_palette.dart';
import 'package:clay/entities/review.dart';
import 'package:clay/extensions/list_extension.dart';
import 'package:clay/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key});

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              children: const [
                Flexible(
                  child: Text(
                    'Discover how our team uses Computer Vision to boost your business.',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Container(
                child: Column(children: [
                  
                ]),
              )],
            ),
          ),
          SizedBox(
            height: 130,
          )
        ]),
      ),
    );
  }
}
