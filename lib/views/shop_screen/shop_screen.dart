import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/constants/lists.dart';
import 'package:megacy_app/views/shop_screen/product_detail_sceen.dart';
import 'package:megacy_app/widgets_common/filter_tag_widget.dart';
import 'package:megacy_app/widgets_common/collection_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SearchAnchor(
                      builder:
                          (BuildContext context, SearchController controller) {
                        return SearchBar(
                          backgroundColor:
                              MaterialStateProperty.all(fillLightTertiary),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          constraints: const BoxConstraints(
                              maxWidth: 300, minHeight: 40.0),
                          shape: MaterialStateProperty.all(
                              const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )),
                          hintStyle: MaterialStateProperty.all(const TextStyle(
                              color: labelLightTertiary, fontSize: 14)),
                          textStyle: MaterialStateProperty.all(const TextStyle(
                              color: Colors.black, fontSize: 14)),
                          controller: controller,
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 8.0)),
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: const Icon(
                            Icons.search,
                            color: labelLightTertiary,
                          ),
                          hintText: 'Tìm kiếm sản phẩm',
                        );
                      },
                      viewBackgroundColor: Colors.white,
                      headerHintStyle: const TextStyle(
                          color: labelLightTertiary, fontSize: 14),
                      viewHintText: 'Tìm kiếm sản phẩm',
                      suggestionsBuilder:
                          (BuildContext context, SearchController controller) {
                        return [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                10.heightBox,
                                'Popular search terms'
                                    .text
                                    .size(14)
                                    .black
                                    .make(),
                                10.heightBox,
                                Wrap(
                                  children: List.generate(artCollections.length,
                                      (int index) {
                                    return Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              artCollections[index].imageUrl,
                                              fit: BoxFit.fill,
                                            ).box.width(93).height(124).make(),
                                            10.widthBox,
                                            artCollections[index]
                                                .name
                                                .text
                                                .size(14)
                                                .make()
                                          ],
                                        ),
                                        5.heightBox
                                      ],
                                    );
                                  }),
                                ),
                              ],
                            ),
                          )
                        ];
                      }),
                ),
                12.widthBox,
                const Icon(
                  Icons.shopping_bag_outlined,
                  size: 24,
                ),
                12.widthBox,
                const Icon(Icons.message_outlined, size: 24),
              ],
            ),
            15.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  filterList.length,
                  (index) => filterTag(title: filterList[index]),
                ),
              ),
            ),
            15.heightBox,
            // GridView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: bestChoiceProducts.length,
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 8,
            //       crossAxisSpacing: 8,
            //       mainAxisExtent: 305),
            //   itemBuilder: (context, index) {
            //     return CollectionCard(
            //             product: bestChoiceProducts[index], isMargin: false)
            //         .box
            //         .make()
            //         .onTap(() {
            //       Get.to(() => ProductDetailScreen(
            //             detail: detailProducts[index],
            //           ));
            //     });
            //   },
            // ),
          ],
        )),
      ),
    );
  }
}
