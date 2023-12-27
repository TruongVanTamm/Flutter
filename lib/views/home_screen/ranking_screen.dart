import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/model/ranking_item_model.dart';

Widget rankingScreen({required List<RankingItem> data}) {
  return Column(
    children: List.generate(
      data.length > 5 ? 5 : data.length,
      (index) => Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            (index + 1)
                .text
                .size(16)
                .color(textColor)
                .fontWeight(FontWeight.w500)
                .make(),
            20.widthBox,
            Image.asset(data[index].imageUrl),
            10.widthBox,
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          data[index]
                              .name
                              .text
                              .size(12)
                              .color(textColor)
                              .fontWeight(FontWeight.w700)
                              .make(),
                          5.widthBox,
                          Image.asset(icVerify),
                        ],
                      ),
                      5.heightBox,
                      'Floor:${data[index].floorPrice} ${data[index].chain}'
                          .text
                          .size(12)
                          .color(textColor)
                          .make()
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      '${data[index].floorPrice} ${data[index].chain}'
                          .text
                          .size(12)
                          .color(textColor)
                          .fontWeight(FontWeight.w700)
                          .make(),
                      5.heightBox,
                      '+${data[index].fluctuation}%'
                          .text
                          .size(12)
                          .color(greenColor)
                          .fontWeight(FontWeight.w500)
                          .make()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
