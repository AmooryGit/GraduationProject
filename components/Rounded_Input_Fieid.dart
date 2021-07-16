import 'package:eilajl/constants.dart';
import 'package:flutter/material.dart';

import 'text_filed_input.dart';

class RoundedInputFieid extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final ValueChanged<String> onch;
  const RoundedInputFieid({
    Key key,
    this.hintext,
    this.icon,
    this.onch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldcontainer(
      child: Form(
          child: TextFormField(
        onChanged: onch,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
            hintText: hintext),
      )),
    );
  }
}
