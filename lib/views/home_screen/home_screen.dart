import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/constants/lists.dart';
import 'package:megacy_app/controllers/home_tab_controller.dart';
import 'package:megacy_app/views/home_screen/ranking_screen.dart';
import 'package:megacy_app/widgets_common/popup_menu_prefixIcon_widget.dart';
import 'package:megacy_app/widgets_common/popup_menu_widget.dart';
import 'package:megacy_app/widgets_common/collection_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeTabController _tabx = Get.put(HomeTabController());
  String timeLable = rangeTime[2].name;
  String timeValue = rangeTime[2].value;
  String chainCode = listChain[0].value;
  String blockChainName = listChain[0].name;
  void _selectTime(value) {
    setState(() {
      timeValue = value;
      timeLable = rangeTime.where((name) => name.value == value).first.name;
    });
  }

  void _selectChain(value) {
    setState(() {
      chainCode = value;
      blockChainName =
          listChain.where((name) => name.value == value).first.name;
    });
  }

  @override
  void initState() {
    super.initState();
  }

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
                10.heightBox,
                ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(context.screenWidth,
                        (context.screenWidth - 38) * 8 / 10)),
                    child: Swiper(
                      viewportFraction: 0.8,
                      scale: 0.9,
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
                    )),
                10.heightBox,
                TabBar(
                    labelPadding: const EdgeInsets.only(left: 0, right: 20),
                    controller: _tabx.controller,
                    tabs: _tabx.myTabs,
                    isScrollable: true,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide.none, // Removes the underline
                    ),
                    dividerHeight: 0,
                    labelColor: black,
                    unselectedLabelColor: grayColor2,
                    labelStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    tabAlignment: TabAlignment.start),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PopupMenu(
                      value: timeLable,
                      onTap: _selectTime,
                      list: rangeTime,
                    ),
                    PopupMenuPrefixIcon(
                      value: blockChainName,
                      onTap: _selectChain,
                      list: listChain,
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    "COLECTION"
                        .text
                        .size(12)
                        .color(grayColor2)
                        .fontWeight(FontWeight.w500)
                        .make(),
                    "VOLUME"
                        .text
                        .size(12)
                        .color(grayColor2)
                        .fontWeight(FontWeight.w500)
                        .make(),
                  ],
                ),
                10.heightBox,
                // popupMenuWidget(context: context),
                SizedBox(
                  width: context.screenWidth,
                  height: 340,
                  child: TabBarView(
                    controller: _tabx.controller,
                    children: [
                      rankingScreen(data: dataTrending),
                      rankingScreen(data: dataTop),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    "ART"
                        .text
                        .size(16)
                        .color(textColor)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: backgroundPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        onPressed: () {},
                        child: 'See all'
                            .text
                            .color(textColor)
                            .fontWeight(FontWeight.w500)
                            .size(12)
                            .make())
                  ],
                ),
                10.heightBox,
                RawScrollbar(
                  // crossAxisMargin: -20,
                  // thumbColor: grayColor,
                  radius: const Radius.circular(100),
                  thickness: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            artCollections.length,
                            (index) => CollectionCard(
                                collection: artCollections[index]))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    "Music"
                        .text
                        .size(16)
                        .color(textColor)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: backgroundPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        onPressed: () {},
                        child: 'See all'
                            .text
                            .color(textColor)
                            .fontWeight(FontWeight.w500)
                            .size(12)
                            .make())
                  ],
                ),
                10.heightBox,
                RawScrollbar(
                  // crossAxisMargin: -20,
                  // thumbColor: grayColor,
                  radius: const Radius.circular(100),
                  thickness: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            artCollections.length,
                            (index) => CollectionCard(
                                collection: artCollections[index]))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    "Collectibles"
                        .text
                        .size(16)
                        .color(textColor)
                        .fontWeight(FontWeight.w700)
                        .make(),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: backgroundPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        onPressed: () {},
                        child: 'See all'
                            .text
                            .color(textColor)
                            .fontWeight(FontWeight.w500)
                            .size(12)
                            .make())
                  ],
                ),
                10.heightBox,
                RawScrollbar(
                  // crossAxisMargin: -20,
                  // thumbColor: grayColor,
                  radius: const Radius.circular(100),
                  thickness: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            artCollections.length,
                            (index) => CollectionCard(
                                collection: artCollections[index]))),
                  ),
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
