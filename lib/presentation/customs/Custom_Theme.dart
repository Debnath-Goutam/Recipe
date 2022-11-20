import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData Custom_Theme() {

  return ThemeData(

      textTheme: Custom_Text_Theme()

  );

}

TextTheme Custom_Text_Theme() {

  return const TextTheme(

    headline1: TextStyle(
        fontSize: 28,
        color: Colors.black,
        fontWeight: FontWeight.bold
    ),
    headline2: TextStyle(
        fontSize: 24,
        color: Colors.black
    ),
    bodyText1: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal
    ),
    bodyText2: TextStyle(
        fontSize: 15,
        color: Colors.black,
        fontWeight: FontWeight.normal
    ),

  );

}