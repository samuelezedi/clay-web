import 'package:clay/utils/color_palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  bool careerHover = false;
  bool techHover = false;
  bool blogHover = false;
  bool iosHover = false;
  bool androidHover = false;
  bool igHover = false;
  bool linkedInHover = false;

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
      color: Palette.chacola,
      child: Column(children: [
        const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Flexible(
                child: Text.rich(TextSpan(
                    text: 'Try Clay for free\non iOS, Android & ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'iPad OS.',
                        style: TextStyle(
                            color: Palette.lilac,
                            fontSize: 40,
                            fontWeight: FontWeight.w400),
                      )
                    ])),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: const Color(0xff303035)),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 20),
                      child: Text(
                        'App Store',
                        style: TextStyle(
                            color: Palette.primary,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                    icon: const Icon(
                      CupertinoIcons.play_fill,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: const Color(0xff303035)),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 20),
                      child: Text(
                        'Google Play',
                        style: TextStyle(
                            color: Palette.primary,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: const [
                Text(
                  'Clay',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: const [
                Text(
                  'Company',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                InkWell(
                    hoverColor: Colors.white,
                    onHover: (value) {
                      setState(() {
                        careerHover = value;
                      });
                    },
                    onTap: () {},
                    child: Text('Career',
                        style: TextStyle(
                            color: careerHover
                                ? Colors.white
                                : Colors.grey.shade600,
                            fontSize: 19))),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Community',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    techHover = value;
                  });
                },
                onTap: () {},
                child: Text('Technology',
                    style: TextStyle(
                        color: techHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    blogHover = value;
                  });
                },
                onTap: () {},
                child: Text('Blog',
                    style: TextStyle(
                        color: blogHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Follow',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    igHover = value;
                  });
                },
                onTap: () {},
                child: Text('Instagram',
                    style: TextStyle(
                        color: igHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    linkedInHover = value;
                  });
                },
                onTap: () {},
                child: Text('LinkedIn',
                    style: TextStyle(
                        color:
                            linkedInHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Download',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    iosHover = value;
                  });
                },
                onTap: () {},
                child: Text('iOS',
                    style: TextStyle(
                        color: iosHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
            const SizedBox(
              height: 25,
            ),
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {
                  setState(() {
                    androidHover = value;
                  });
                },
                onTap: () {},
                child: Text('Android',
                    style: TextStyle(
                        color:
                            androidHover ? Colors.white : Colors.grey.shade600,
                        fontSize: 19))),
          ]),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Newsletter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 23),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade500),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff303035)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 19, horizontal: 20),
                          child: Text(
                            'Subscribe',
                            style: TextStyle(
                                color: Palette.primary,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Flexible(
                      child: Text(
                    'Read our privacy policy to learn more about how we treat your information. You can unsubscribe at any time. We’ll still love you.',
                    style: TextStyle(
                        fontSize: 11, color: Colors.grey, height: 1.8),
                  ))
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            Expanded(
              child: Text('Copyright © 2022 Clay',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16)),
            ),
          ]),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {},
                onTap: () {},
                child: Text('Get Support',
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 15))),
          ]),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {},
                onTap: () {},
                child: Text('Privacy Policy',
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 15))),
          ]),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            InkWell(
                hoverColor: Colors.white,
                onHover: (value) {},
                onTap: () {},
                child: Text('Terms of service',
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 15))),
          ]),
        ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }

  tablet() {
    return Container(
      color: Palette.chacola,
      child: Column(children: [
        const SizedBox(
          height: 130,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              Flexible(
                child: Text.rich(TextSpan(
                    text: 'Try Clay for free\non iOS, Android & ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'iPad OS.',
                        style: TextStyle(
                            color: Palette.lilac,
                            fontSize: 70,
                            fontWeight: FontWeight.w400),
                      )
                    ])),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            children: [
              ElevatedButton.icon(
                  icon: const Icon(
                    Icons.apple,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: const Color(0xff303035)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 20),
                    child: Text(
                      'App Store',
                      style: TextStyle(
                          color: Palette.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                  icon: const Icon(
                    CupertinoIcons.play_fill,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: const Color(0xff303035)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 20),
                    child: Text(
                      'Google Play',
                      style: TextStyle(
                          color: Palette.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 130,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset('assets/images/footer.jpeg')),
        const SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  'Clay',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Company',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                careerHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Career',
                                style: TextStyle(
                                    color: careerHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Community',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                techHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Technology',
                                style: TextStyle(
                                    color: techHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                blogHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Blog',
                                style: TextStyle(
                                    color: blogHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Follow',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                igHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Instagram',
                                style: TextStyle(
                                    color: igHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                linkedInHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('LinkedIn',
                                style: TextStyle(
                                    color: linkedInHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Download',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                iosHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('iOS',
                                style: TextStyle(
                                    color: iosHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                androidHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Android',
                                style: TextStyle(
                                    color: androidHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Newsletter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 23),
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade500),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xff303035)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 19, horizontal: 20),
                          child: Text(
                            'Subscribe',
                            style: TextStyle(
                                color: Palette.primary,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Flexible(
                      child: Text(
                    'Read our privacy policy to learn more about how we treat your information. You can unsubscribe at any time. We’ll still love you.',
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey, height: 1.8),
                  ))
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(children: [
            Expanded(
              child: Text('Copyright © 2022 Clay',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
            ),
            Container(
                width: 350,
                color: Palette.chacola,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Get Support',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Privacy Policy',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Terms of service',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                  ],
                )),
          ]),
        ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }

  web() {
    return Container(
      color: Palette.chacola,
      child: Column(children: [
        const SizedBox(
          height: 130,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              Flexible(
                child: Text.rich(TextSpan(
                    text: 'Try Clay for free\non iOS, Android & ',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'iPad OS.',
                        style: TextStyle(
                            color: Palette.lilac,
                            fontSize: 70,
                            fontWeight: FontWeight.w400),
                      )
                    ])),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              ElevatedButton.icon(
                  icon: const Icon(
                    Icons.apple,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: const Color(0xff303035)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 20),
                    child: Text(
                      'App Store',
                      style: TextStyle(
                          color: Palette.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                  icon: const Icon(
                    CupertinoIcons.play_fill,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0, backgroundColor: const Color(0xff303035)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 20),
                    child: Text(
                      'Google Play',
                      style: TextStyle(
                          color: Palette.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 130,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Image.asset('assets/images/footer.jpeg')),
        const SizedBox(
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Text(
                  'Clay',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Company',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                careerHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Career',
                                style: TextStyle(
                                    color: careerHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Community',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                techHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Technology',
                                style: TextStyle(
                                    color: techHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                blogHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Blog',
                                style: TextStyle(
                                    color: blogHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Download',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                iosHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('iOS',
                                style: TextStyle(
                                    color: iosHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                androidHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Android',
                                style: TextStyle(
                                    color: androidHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Palette.chacola,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Follow',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                igHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('Instagram',
                                style: TextStyle(
                                    color: igHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                        const SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            hoverColor: Colors.white,
                            onHover: (value) {
                              setState(() {
                                linkedInHover = value;
                              });
                            },
                            onTap: () {},
                            child: Text('LinkedIn',
                                style: TextStyle(
                                    color: linkedInHover
                                        ? Colors.white
                                        : Colors.grey.shade600,
                                    fontSize: 19))),
                      ]),
                ),
              ),
              Container(
                  width: 350,
                  color: Palette.chacola,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Newsletter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 23),
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade500),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0xff303035)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 19, horizontal: 20),
                                  child: Text(
                                    'Subscribe',
                                    style: TextStyle(
                                        color: Palette.primary,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const [
                          Flexible(
                              child: Text(
                            'Read our privacy policy to learn more about how we treat your information. You can unsubscribe at any time. We’ll still love you.',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey, height: 1.8),
                          ))
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(children: [
            Expanded(
              child: Text('Copyright © 2022 Clay',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 15)),
            ),
            Container(
                width: 350,
                color: Palette.chacola,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Get Support',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Privacy Policy',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                    InkWell(
                        hoverColor: Colors.white,
                        onHover: (value) {},
                        onTap: () {},
                        child: Text('Terms of service',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 15))),
                  ],
                )),
          ]),
        ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
