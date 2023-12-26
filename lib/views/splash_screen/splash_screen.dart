import 'package:get/get.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:megacy_app/views/home_screen/home.dart';
import 'package:megacy_app/widgets_common/commom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // changeScreen() {
  //   Future.delayed(const Duration(seconds: 5), () {
  //     Get.to(() => const LoginScreen());
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   changeScreen();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            splashBg,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Image.asset(
            splashShadow2,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Image.asset(
            splashImage,
            fit: BoxFit.fill,
          ),
          // width: double.infinity,
          // height: context.screenHeight * 1 / 4),
          Image.asset(splashShadow),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            margin: const EdgeInsets.only(top: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(logoMegacyCircle),
                    20.widthBox,
                    Image.asset(logoMegacyText),
                  ],
                ),
                5.heightBox,
                splashTitle.text.white.center.size(40).make(),
                5.heightBox,
                splashDes.text.white.center.size(16).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(ethreumSymbol),
                    20.widthBox,
                    Image.asset(bnbSymbol),
                    20.widthBox,
                    Image.asset(polygonSymbol),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: context.screenWidth - 40,
                  child: commomButton(
                      title: 'Continue'
                          .text
                          .fontWeight(FontWeight.w700)
                          .black
                          .size(16)
                          .make(),
                      onPress: () {
                        Get.to(() => const Home());
                      }).box.make(),
                ),
              )),
        ],
      ),
    );
  }
}
