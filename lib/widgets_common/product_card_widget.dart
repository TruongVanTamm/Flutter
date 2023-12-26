import 'package:flutter/material.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/model/product_card_model.dart';

class ProductCard extends StatelessWidget {
  final ProductCardModel product;
  final bool isMargin;
  const ProductCard({
    Key? key,
    required this.product,
    this.isMargin = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: isMargin ? const EdgeInsets.only(right: 8) : null,
          width: (context.screenWidth - 32) / 2,
          height: 245,
          child: Stack(
            children: [
              Image.asset(product.imageUrl),
              const Positioned(
                  bottom: 20.0,
                  right: 10.0,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        product.name.toString().text.size(14).black.make(),
        3.heightBox,
        product.price.toString().text.size(14).color(primaryColor).make()
      ],
    );
  }
}
