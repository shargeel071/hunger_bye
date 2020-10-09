import 'package:flutter/material.dart';

class ScreenConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockWidth;
  static double blockHeight;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeWidth;
  static double safeHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;

    _safeAreaHorizontal = _mediaQueryData.padding.left +
        _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top +
        _mediaQueryData.padding.bottom;
    safeWidth = (screenWidth -
        _safeAreaHorizontal) / 100;
    safeHeight = (screenHeight -
        _safeAreaVertical) / 100;
  }
}