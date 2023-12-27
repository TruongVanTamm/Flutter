import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/model/popup_item_prefix_model.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    super.key,
    required this.value,
    required this.onTap,
    required this.list,
    this.buttonWidth,
  });

  final String value;
  final ValueChanged<String> onTap;
  final double? buttonWidth;
  final List<PopupItemPrefix> list;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) {
        // your logic
      },
      color: white,
      constraints: BoxConstraints(minWidth: context.screenWidth),
      itemBuilder: (BuildContext bc) {
        return [
          PopupMenuItem(
              enabled: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  "Select"
                      .text
                      .size(16)
                      .black
                      .fontWeight(FontWeight.bold)
                      .make(),
                  IconButton(
                      onPressed: Navigator.of(context).pop,
                      icon: const Icon(Icons.clear, color: black))
                ],
              )),
          ...list
              .map(
                (e) => PopupMenuItem(
                  value: e,
                  child: e.name.text
                      .size(16)
                      .black
                      .fontWeight(FontWeight.bold)
                      .make(),
                  onTap: () {
                    onTap(e.value);
                  },
                ),
              )
              .toList(),
        ];
      },
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: buttonWidth ?? context.screenWidth / 2 - 25,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          decoration: BoxDecoration(
            color: backgroundPrimaryColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              value.text.fontWeight(FontWeight.w500).size(14).make(),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
      ),
    );
  }
}
