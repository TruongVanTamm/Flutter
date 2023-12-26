import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/constants/lists.dart';
import 'package:megacy_app/views/auth_screen/register_screen.dart';
import 'package:megacy_app/widgets_common/Input/auth_text_field.dart';
import 'package:megacy_app/widgets_common/applogo_widget.dart';
import 'package:megacy_app/widgets_common/commom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgBackground), fit: BoxFit.fill)),
          child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_left_outlined),
                        onPressed: () {},
                      ),
                      Container(
                          padding: const EdgeInsets.only(right: 26),
                          child: applogoWidget(logo: icAppLogoBlack)
                              .box
                              .size(83, 43)
                              .make()),
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
                        applogoWidget(logo: icAppLogoBlack),
                        authTextField(
                            icon: const Icon(Icons.person_outline),
                            hint: 'Email / Số điện thoại / Tên đăng nhập'),
                        authTextField(
                            icon: const Icon(Icons.lock_outline),
                            hint: 'Mật khẩu'),
                        10.heightBox,
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: forgetPassword.text.black.underline.make(),
                          ),
                        ),
                        20.heightBox,
                        Align(
                          alignment: Alignment.center,
                          child: commomButton(
                              title: login.text.white.size(20).make(),
                              onPress: () {
                                Get.to(() => const RegisterScreen());
                              }).box.width(context.screenWidth).make(),
                        ),
                        20.heightBox,
                        Row(children: <Widget>[
                          Expanded(
                              child: Transform.translate(
                            offset: const Offset(0, 3.0),
                            child: const Divider(),
                          )),
                          5.widthBox,
                          'Hoặc đăng ký với'.text.black.make(),
                          5.widthBox,
                          Expanded(
                              child: Transform.translate(
                            offset: const Offset(0, 3.0),
                            child: const Divider(),
                          )),
                        ]),
                        5.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              3,
                              (index) => Container(
                                  padding: const EdgeInsets.all(8),
                                  margin: const EdgeInsets.all(8),
                                  width: 75,
                                  height: 48,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(0, 1),
                                          blurRadius: 1)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Image.asset(
                                    socialIconList[index],
                                  ))),
                        ),
                        100.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            'Bạn chưa có tài khoản?'
                                .text
                                .size(13)
                                .fontWeight(FontWeight.w500)
                                .black
                                .make(),
                            5.widthBox,
                            TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(0)),
                              onPressed: () {},
                              child: 'Đăng ký ngay'
                                  .text
                                  .fontWeight(FontWeight.w400)
                                  .size(13)
                                  .black
                                  .make(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          )),
    );
  }
}
