import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';

Widget authTextField({Widget? icon, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: grayColor, fontSize: 14),
            hintText: hint,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: grayColor, width: 1.0)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: grayColor, width: 1.0)),
            enabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(color: grayColor, width: 1.0)), // your color
            prefixIcon: icon),
      )
    ],
  );
}
