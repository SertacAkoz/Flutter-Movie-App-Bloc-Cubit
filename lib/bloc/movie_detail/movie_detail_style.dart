import 'package:flutter/material.dart';
import 'package:movie_bloc/ui/base_style.dart';

class MovieDetailStyle extends BaseStyle{

  @override
  TextStyle getTitleTextStyle(){
    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: onBackgroundColor);
  }

  @override
  TextStyle getSubTitleTextStyle(){
    return TextStyle(color: theme600, fontSize: 12);
  }

  TextStyle getContentTextSTyle(){
    return TextStyle(color: theme400);
  }
}