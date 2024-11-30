import 'package:flutter/material.dart';

extension MyContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
