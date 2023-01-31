// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

abstract class BaseStyle{
  final backgroundColor = const Color(0xFF212121);
  // final backgroundColor = Colors.amber;
  // final onBackgroundColor = const Color(0xFFBDBDBD);
  final onBackgroundColor = Colors.white;

  final theme800 = const Color(0xFF424242);
  final theme700 = const Color(0xFF616161);
  final theme600 = const Color(0xFF757575);
  final theme500 = const Color(0xFF9E9E9E);
  final theme400 = const Color(0xFFBDBDBD);
  final theme300 = const Color(0xFFE0E0E0);
  final theme200 = const Color(0xFFEEEEEE);
  final theme100 = const Color(0xFFF5F5F5);

  double getWidth(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    return width;
  }

  double getheight(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    return height;
  }

  TextStyle getTitleTextStyle(){
    return TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: onBackgroundColor);
  }

  TextStyle getSubTitleTextStyle(){
    return TextStyle(color: onBackgroundColor);
  }
}