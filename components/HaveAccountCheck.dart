import 'package:eilajl/constants.dart';
import 'package:flutter/material.dart';

class HaveAccountCheck extends StatelessWidget {
  const HaveAccountCheck({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
