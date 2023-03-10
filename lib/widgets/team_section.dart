
import 'package:clay/utils/color_palette.dart';
import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 700) {
        return mobile();
      }

      if (constraint.maxWidth > 700 && constraint.maxWidth < 1100) {
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
                  'Discover how our team uses Computer Vision to boost your business.',
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.lilac),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Explore our Tech Page",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                              'Creating a cross platform editor has been quite challenging. Learn how we overcome complex technical problems.',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 19, horizontal: 20),
                            child: Text(
                              'Read the articles',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [Image.asset('assets/images/globe1.png')],
                      // )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.lilac),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Join our team",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                              'We are looking for talented individuals to join our international team. If you are interested, apply today!',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 19, horizontal: 20),
                            child: Text(
                              'See open positions',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: [Image.asset('assets/images/globe2.png')],
                      // )
                    ]),
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
                  'Discover how our team uses Computer Vision to boost your business.',
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
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.lilac),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Explore our Tech Page",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
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
                              'Creating a cross platform editor has been quite challenging. Learn how we overcome complex technical problems.',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 19, horizontal: 20),
                            child: Text(
                              'Read the articles',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset('assets/images/globe1.png')],
                      )
                    ]),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Palette.lilac),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Join our team",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
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
                              'We are looking for talented individuals to join our international team. If you are interested, apply today!',
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 19, horizontal: 20),
                            child: Text(
                              'See open positions',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Image.asset('assets/images/globe2.png')],
                      )
                    ]),
              ),
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
            children: [
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.lilac),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Explore our Tech Page",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
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
                                'Creating a cross platform editor has been quite challenging. Learn how we overcome complex technical problems.',
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 19, horizontal: 20),
                              child: Text(
                                'Read the articles',
                                style: TextStyle(
                                    color: Palette.primary,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Image.asset('assets/images/globe1.png')],
                        )
                      ]),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Palette.lilac),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Join our team",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
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
                                'We are looking for talented individuals to join our international team. If you are interested, apply today!',
                                style: TextStyle(fontSize: 18),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: Colors.black),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 19, horizontal: 20),
                              child: Text(
                                'See open positions',
                                style: TextStyle(
                                    color: Palette.primary,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Image.asset('assets/images/globe2.png')],
                        )
                      ]),
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
