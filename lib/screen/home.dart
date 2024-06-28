import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:office_furniture_store/const_widget.dart/controller/office_furniture_controller.dart';

import '../const_widget.dart/const.dart';
import 'cart.dart';
import 'favorite.dart';
import 'list_screen.dart';
import 'profile.dart';

final OfficeFurnitureController controller =
    Get.put(OfficeFurnitureController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Widget> screens = const [
    OfficeFurnitureListScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(
        width: 150,
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 140,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: const Image(
                  image: AssetImage('assets/images/redblue.png'),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
          )),

      // backgroundColor: Colors.red,

      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            // elevation: 0,
            unselectedItemColor: Colors.white,
            currentIndex: controller.currentBottomNavItemIndex.value,
            showUnselectedLabels: true,
            onTap: controller.switchBetweenBottomNavigationItems,
            fixedColor: AppColor.lightBlack,
            items: AppData.bottomNavigationItems
                .map(
                  (element) => BottomNavigationBarItem(
                      backgroundColor: Colors.blue,
                      icon: element.icon,
                      label: element.label),
                )
                .toList(),
          );
        },
      ),
      body: Obx(() => screens[controller.currentBottomNavItemIndex.value]),
    );
  }
}
