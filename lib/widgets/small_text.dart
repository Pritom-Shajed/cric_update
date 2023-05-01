import 'package:cric_update/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;

  const SmallText(
      {Key? key,
      required this.text,
      this.size = 0,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.grey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size == 0 ? Dimensions.font12 : size,
          fontWeight: fontWeight),
    );
  }
}
