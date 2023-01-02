import 'package:flutter/material.dart';

class Palette {
  static const Map<int, Color> _primary = {
    50: Color.fromRGBO(41, 236, 229, .1),
    100: Color.fromRGBO(41, 236, 229, .2),
    200: Color.fromRGBO(41, 236, 229, .3),
    300: Color.fromRGBO(41, 236, 229, .4),
    400: Color.fromRGBO(41, 236, 229, .5),
    500: Color.fromRGBO(41, 236, 229, .6),
    600: Color.fromRGBO(41, 236, 229, .7),
    700: Color.fromRGBO(41, 236, 229, .8),
    800: Color.fromRGBO(41, 236, 229, .9),
    900: Color.fromRGBO(41, 236, 229, 1),
  };

  static const Map<int, Color> _shade = {
    50: Color.fromRGBO(0, 0, 0, .1),
    100: Color.fromRGBO(0, 0, 0, .2),
    200: Color.fromRGBO(0, 0, 0, .3),
    300: Color.fromRGBO(0, 0, 0, .4),
    400: Color.fromRGBO(0, 0, 0, .5),
    500: Color.fromRGBO(0, 0, 0, .6),
    600: Color.fromRGBO(0, 0, 0, .7),
    700: Color.fromRGBO(0, 0, 0, .8),
    800: Color.fromRGBO(0, 0, 0, .9),
    900: Color.fromRGBO(0, 0, 0, 1),
  };

  static MaterialColor primary = const MaterialColor(0xFFf1ece5, _primary);

  static MaterialColor shade = const MaterialColor(0xFF000000, _shade);

  static MaterialColor chacola = const MaterialColor(0xFF17171b, _shade);

  static MaterialColor lilac = const MaterialColor(0xFF9fa8eb, _shade);

  static MaterialColor lightTeal = const MaterialColor(0xFF8ad2e9, _shade);

  static MaterialColor lightGrey = const MaterialColor(0xFFf4f4f5, _shade);

  static MaterialColor pinkPurple = const MaterialColor(0xFFbc64a4, _shade);

  static MaterialColor lightYellow = const MaterialColor(0xFFfcdd9a, _shade);

  static MaterialColor orane = const MaterialColor(0xFFf89163, _shade);
}
