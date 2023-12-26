import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/views/auth_screen/login_screen.dart';
import 'package:megacy_app/widgets_common/applogo_widget.dart';
import 'package:megacy_app/widgets_common/commom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
            child: Center(
          child: Column(
            children: <Widget>[
              favorite.text.size(16).make(),
              100.heightBox,
              applogoWidget(logo: icAppLogoBlack).box.size(188, 99).make(),
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
              'Bạn chưa có mục yêu thích nào!'.text.size(16).make(),
              const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Nhấn ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                    WidgetSpan(child: Icon(Icons.favorite_outline)),
                    TextSpan(
                        text: ' để lưu mục yêu thích của bạn ở một nơi',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                  ],
                ),
              ),
              20.heightBox,
              Align(
                alignment: Alignment.center,
                child: commomButton(
                        title: login.text.white.size(16).make(),
                        onPress: () {
                          Get.to(() => const LoginScreen());
                        },
                        backgroundColor: Colors.black)
                    .box
                    .width(120)
                    .make(),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
