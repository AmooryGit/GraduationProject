import 'package:eilajl/constants.dart';
import 'package:flutter/material.dart';

class TextFieldcontainer extends StatelessWidget {
  final Widget child;
  const TextFieldcontainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryColorLightColor,
          borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
