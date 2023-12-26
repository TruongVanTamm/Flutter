import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/controllers/home_controller.dart';
import 'package:megacy_app/views/favorite_screen/favorite_screen.dart';
import 'package:megacy_app/views/home_screen/home_screen.dart';
import 'package:megacy_app/views/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 24,
          color: unselectedItemColor,
        ),
        activeIcon: Image.asset(
          icHome,
          width: 24,
          color: bluePrimaryColor,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            icShop,
            width: 24,
            color: unselectedItemColor,
          ),
          activeIcon: Image.asset(
            icShop,
            width: 24,
            color: bluePrimaryColor,
          ),
          label: shop),
      BottomNavigationBarItem(
          icon: Image.asset(
            icFavoriteSeller,
            width: 24,
            color: unselectedItemColor,
          ),
          activeIcon: Image.asset(
            icFavoriteSeller,
            width: 24,
            color: bluePrimaryColor,
          ),
          label: favorite),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 24,
            color: unselectedItemColor,
          ),
          activeIcon: Image.asset(
            icCart,
            width: 24,
            color: bluePrimaryColor,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 24,
            color: unselectedItemColor,
          ),
          activeIcon: Image.asset(
            icProfile,
            width: 24,
            color: bluePrimaryColor,
          ),
          label: profile),
    ];

    var navBody = [
      HomeScreen(),
      const ShopScreen(),
      const FavoriteScreen(),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.cyan,
      )
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() => Container(
            child: navBody.elementAt(controller.currentNavIndex.value))),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            unselectedItemColor: unselectedItemColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: bluePrimaryColor,
            selectedLabelStyle: const TextStyle(fontSize: 12),
            type: BottomNavigationBarType.fixed,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
