import 'package:eilajl/constants.dart';
import 'package:flutter/material.dart';

class Divider_Drawer extends StatelessWidget {
  const Divider_Drawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      thickness: 0.5,
      color: kPrimaryColorLightColor.withOpacity(0.3),
      indent: 30,
      endIndent: 30,
    );
  }
}
