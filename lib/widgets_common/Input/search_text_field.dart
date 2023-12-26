import 'package:megacy_app/constants/constants.dart';
import 'package:flutter/material.dart';

Widget searchTextField({Widget? icon, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 38,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: fillLightTertiary,
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                hintStyle:
                    const TextStyle(color: labelLightTertiary, fontSize: 14),
                hintText: hint,
                border: InputBorder.none,
                prefixIcon: icon,
                prefixIconConstraints: const BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 25,
                )),
          ),
        ),
      )
    ],
  );
}
