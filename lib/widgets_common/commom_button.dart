import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';

Widget commomButton({onPress, backgroundColor = primaryColor, Widget? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1018.0),
      ),
    ),
    onPressed: onPress,
    child: title,
  );
}
