import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  Texts({this.text, this.size, this.color, this.fontWeight});
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    //  Widget texts(String text, double size, Color color, FontWeight fontWeight) {
    // return Text(
    //   text,
    //   style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
    // );

    return Text(text!,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight));
  }
}
