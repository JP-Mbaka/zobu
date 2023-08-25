import 'package:flutter/material.dart';

import 'colors.dart';

TextStyle headerStyle({color, fontSize}) {
  return TextStyle(
      color: color ?? BLACK,
      fontWeight: FontWeight.bold,
      fontSize: fontSize ?? 25);
}

TextStyle subHeaderStyle({color}) {
  return TextStyle(
      color: color ?? BLACK, fontWeight: FontWeight.bold, fontSize: 16);
}

TextStyle mediumBodyStyle({color, weight, fontSize}) {
  return TextStyle(
      color: color ?? BLACK,
      fontWeight: weight ?? FontWeight.w200,
      fontSize: fontSize ?? 14);
}

TextStyle smallBodyStyle({color, weight}) {
  return TextStyle(
      color: color ?? BLACK,
      fontWeight: weight ?? FontWeight.w200,
      fontSize: 12);
}

TextStyle bodyStyle({color}) {
  return TextStyle(color: color ?? GREY2);
}

TextStyle underlineBodyStyle({color, weight}) {
  return TextStyle(
      color: color ?? GREY2,
      decoration: TextDecoration.underline,
      fontWeight: weight);
}
