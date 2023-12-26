import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/views/auth_screen/login_screen.dart';
import 'package:megacy_app/widgets_common/Input/auth_text_field.dart';
import 'package:megacy_app/widgets_common/applogo_widget.dart';
import 'package:megacy_app/widgets_common/commom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen/home.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_left_outlined),
                    onPressed: () {
                      Get.to(() => const LoginScreen());
                    },
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 26),
                      child: applogoWidget(logo: icAppLogoBlack)
                          .box
                          .size(83, 43)
                          .make()),
                  // ,
                  10.widthBox,
                ],
              ),
              30.heightBox,
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    authTextField(
                        icon: const Icon(Icons.person_outline),
                        hint: 'Tên đăng nhập'),
                    authTextField(
                        icon: const Icon(Icons.smartphone_outlined),
                        hint: 'Số điện thoại'),
                    authTextField(
                        icon: const Icon(Icons.email_outlined), hint: 'Email'),
                    authTextField(
                        icon: const Icon(Icons.lock_outline), hint: 'Mật khẩu'),
                    authTextField(
                        icon: const Icon(Icons.lock_outline),
                        hint: 'Nhập lại mật khẩu'),
                    authTextField(
                        icon: const Icon(Icons.add_location_outlined),
                        hint: 'Địa chỉ'),
                    50.heightBox,
                    Align(
                      alignment: Alignment.center,
                      child: commomButton(
                          title: register.text.white.size(20).make(),
                          onPress: () {
                            Get.to(() => const Home());
                          }).box.width(263).make(),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
