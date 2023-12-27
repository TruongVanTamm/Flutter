import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';

Widget filterTag({onPress, required String? title}) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: grayColor1,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: onPress,
      child: title?.text.black.size(16).make(),
    ),
  );
}
