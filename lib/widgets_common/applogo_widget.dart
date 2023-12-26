import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';

Widget applogoWidget({required String logo}) {
  return Image.asset(logo).box.size(257, 133).make();
}
