import 'package:flutter/material.dart';

Widget circularUser(imageFile) {
  return CircleAvatar(
    radius: 50.0,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Image.asset(imageFile)),
  );
}
