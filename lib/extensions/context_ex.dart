import 'package:flutter/material.dart';

extension MyContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}
