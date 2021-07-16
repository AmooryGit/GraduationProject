import 'package:eilajl/constants.dart';
import 'package:flutter/material.dart';

import 'text_filed_input.dart';

class RoundedPasswordFieid extends StatelessWidget {
  final ValueChanged<String> onch;
  const RoundedPasswordFieid({
    Key key,
    this.onch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldcontainer(
      child: Form(
          child: TextFormField(
        obscureText: true,
        onChanged: onch,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: 'Your password',
        ),
      )),
    );
  }
}
