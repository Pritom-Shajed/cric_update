import 'package:cric_update/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  const BigText({Key? key, required this.text, this.size=0, this.fontWeight=FontWeight.normal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: fontWeight
      ),
    );
  }
}
