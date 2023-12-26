import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/constants/lists.dart';
import 'package:megacy_app/controllers/home_tab_controller.dart';
import 'package:megacy_app/widgets_common/product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeTabController _tabx = Get.put(HomeTabController());
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 19, left: 19, top: 19),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Image.asset(
                    logoMegacySquare,
                  ),
                  5.widthBox,
                  'Megacy'.text.fontWeight(FontWeight.w700).make(),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: backgroundPrimaryColor,
                    borderRadius: BorderRadius.circular(100.0)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Row(
                  children: <Widget>[
                    '1000 '.text.fontWeight(FontWeight.w500).make(),
                    Image.asset(logoMegacyCircle, width: 16, height: 16),
                    15.widthBox,
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: IconButton(
                          style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all(const CircleBorder()),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(0)),
                            backgroundColor:
                                MaterialStateProperty.all(bluePrimaryColor),
                          ),
                          iconSize: 20.0,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: white,
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(19),
          color: Colors.white,
          width: context.screenWidth,
          height: context.screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                20.heightBox,
                ConstrainedBox(
                    constraints:
                        BoxConstraints.loose(Size(context.screenWidth, 340.0)),
                    child: Transform.translate(
                      offset: const Offset(0, -20),
                      child: Swiper(
                        itemCount: homeSliderList.length,
                        itemBuilder: (itemBuilder, index) {
                          return Image.asset(
                            homeSliderList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .withRounded(value: 20.0)
                              .clip(Clip.antiAlias)
                              .make();
                        },
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    'BST MỚI NHẤT'.text.size(20).make(),
                    'Xem thêm'.text.size(12).make(),
                  ],
                ),
                10.heightBox,
                RawScrollbar(
                  crossAxisMargin: -20,
                  thumbColor: greenColor,
                  radius: const Radius.circular(100),
                  thickness: 4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            btsProducts.length,
                            (index) =>
                                ProductCard(product: btsProducts[index]))),
                  ),
                ),
                30.heightBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: 'BEST CHOICES'.text.size(20).make(),
                ),
                10.heightBox,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: bestChoiceProducts.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 305),
                  itemBuilder: (context, index) {
                    return ProductCard(
                        product: bestChoiceProducts[index], isMargin: false);
                  },
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Transform.translate(
                    offset: const Offset(0, 3.0),
                    child: const Divider(
                      indent: 100,
                      color: greyColor,
                    ),
                  )),
                  5.widthBox,
                  const Icon(
                    CupertinoIcons.rhombus,
                    color: greyColor,
                    size: 20,
                  ),
                  5.widthBox,
                  Expanded(
                      child: Transform.translate(
                    offset: const Offset(0, 3.0),
                    child: const Divider(endIndent: 100, color: greyColor),
                  )),
                ]),
                10.heightBox,
                Row(
                  children: <Widget>[
                    const Icon(Icons.local_phone_outlined, color: greyColor),
                    16.widthBox,
                    numberPhone.text.color(greyColor).size(16).make()
                  ],
                ),
                10.heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(Icons.add_location_outlined, color: greyColor),
                    16.widthBox,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            addressList.length,
                            (index) => addressList[index]
                                .text
                                .color(greyColor)
                                .size(16)
                                .make()),
                      ),
                    ),
                  ],
                ),
                30.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      socialIconList2.length,
                      (index) => Container(
                          padding: const EdgeInsets.all(15),
                          child: Image.asset(
                            socialIconList2[index],
                            width: 24,
                            height: 24,
                          ))),
                ),
                130.heightBox,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
