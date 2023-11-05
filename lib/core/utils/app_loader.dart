import 'package:flutter/material.dart';
import '../basic_features.dart';

class Loader {
  Loader._();
  static final instance = Loader._();

  init() {
    // EasyLoading.init();
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..loadingStyle =
          EasyLoadingStyle.custom //This was missing in earlier code
      ..backgroundColor = Colors.transparent
      ..indicatorColor = ColorConst.primaryColor
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..indicatorSize = 60
      ..maskType = EasyLoadingMaskType.black
      ..dismissOnTap = false
      ..textColor = Colors.transparent
      ..boxShadow = <BoxShadow>[]
      ..userInteractions = false;
  }
}
