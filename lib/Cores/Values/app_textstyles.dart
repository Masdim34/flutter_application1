import 'package:flutter/material.dart';

class Ts {
  static TxtStyle text = TxtStyle();
  static HeadStyle heading = HeadStyle();
}

class TxtStyle {
  //Xs
  final TextStyle xsRegular = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 10,
      height: 1.4);
  final TextStyle xsMedium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 10,
      height: 1.4);
  //S
  final TextStyle sRegular = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.33);
  final TextStyle sMedium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.33);

  //M
  final TextStyle mRegular = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.42);
  final TextStyle mMedium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.42);

  //L
  final TextStyle lthin = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
      fontSize: 16,
      height: 1.5);
  final TextStyle lRegular = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5);
  final TextStyle lMedium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5);
  //XL
  final TextStyle xlRegular = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      height: 1.5);
  final TextStyle xlMedium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.5);
}

class HeadStyle {
  //L
  final TextStyle small = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      height: 1.4,
      letterSpacing: 0.05);

  final TextStyle medium = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 28,
      height: 1.28,
      letterSpacing: 0.05);
  final TextStyle large = TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 36,
      height: 1.2,
      letterSpacing: 0.05);
}
