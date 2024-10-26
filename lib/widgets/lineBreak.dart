import 'package:flutter/material.dart';

Widget lineBreak() {
  return Divider(thickness: 1, color: Colors.grey[300]);
}

Widget thickLineBreak() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 12,
    color: Colors.grey[200],
  );
}
