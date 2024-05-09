import 'dart:math';
import 'package:flutter/widgets.dart';

class ScaleSize {
  static double textScaleFactorOf(BuildContext context,
      {required double param1}) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    double widthScaleFactor = (width / 1400) * param1;
    double heightScaleFactor = (height / 1400) * param1;

    return min(widthScaleFactor, heightScaleFactor);
  }
}
