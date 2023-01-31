import 'package:flutter/material.dart';
import 'package:movie_bloc/ui/base_style.dart';

class HomeStyle extends BaseStyle {
  @override
  TextStyle getTitleTextStyle() {
    return TextStyle(
        fontSize: 21, fontWeight: FontWeight.bold, color: onBackgroundColor);
  }

  @override
  TextStyle getSubTitleTextStyle() {
    return TextStyle(color: onBackgroundColor);
  }

  TextStyle getContentTitleTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: theme300,
    );
  }

  TextStyle getUpComingDateTextStyle() {
    return TextStyle(
      color: theme300,
      fontSize: 11,
    );
  }

  TextStyle getNewsTitleTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: theme300,
    );
  }
}
