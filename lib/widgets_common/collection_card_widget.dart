import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/model/product_card_model.dart';

class CollectionCard extends StatelessWidget {
  final CollectionCardModel collection;
  const CollectionCard({
    Key? key,
    required this.collection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 6 / 10,
      margin: const EdgeInsets.only(
        right: 12,
        bottom: 20,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: grayColor, // Border color
            width: 0.25, // Border width
          ),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.20),
                offset: Offset(0, 0),
                blurRadius: 17)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            collection.imageUrl,
            fit: BoxFit.fill,
          )
              .box
              .size(
                  context.screenWidth * 6 / 10, context.screenWidth * 3.3 / 10)
              .topRounded(value: 15)
              .clip(Clip.antiAlias)
              .make(),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                collection.name
                    .toString()
                    .text
                    .size(14)
                    .fontWeight(FontWeight.w700)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        'FLOOR'.text.size(12).make(),
                        2.heightBox,
                        '${collection.floorPrice} ${collection.chain}'
                            .toString()
                            .text
                            .size(12)
                            .fontWeight(FontWeight.w700)
                            .color(textColor)
                            .make(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        'TOTAL VOLUME'.text.size(12).make(),
                        2.heightBox,
                        '${collection.totalVolume} ${collection.chain}'
                            .toString()
                            .text
                            .size(12)
                            .fontWeight(FontWeight.w700)
                            .color(textColor)
                            .make(),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
