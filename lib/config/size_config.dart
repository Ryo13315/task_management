import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///画面のサイズを元にウィジェットの横幅を決めるときに使用します。
///　　例：width : SizeConfig.safeBlockHorizontal * 50
///       ↑画面横幅の50%のサイズにする
class SizeConfig {
  static late MediaQueryData _mediaQueryData ;
  static  double screenWidth = 0;
  static  double screenHeight = 0;
  static  double blockSizeHorizontal = 0;
  static  double blockSizeVertical = 0;

  // static  double _safeAreaHorizontal = 0;
  // static  double _safeAreaVertical = 0;
  static  double safeBlockHorizontal = 0;
  static  double safeBlockVertical = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}
