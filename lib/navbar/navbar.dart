import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/controller.dart';
import 'package:task/pages/home/home.dart';
import 'package:task/pages/messages/messages.dart';
import 'package:task/pages/parteners/parteners.dart';
import 'package:task/pages/products/products.dart';
import 'package:task/pages/profile/profile.dart';
import '../constants/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavBarController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GetBuilder<NavBarController>(builder: (context) {
        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              Home(),
              Parteners(),
              Products(),
              Messages(),
              Profile()
            ],
          ),
          bottomNavigationBar: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    blurRadius: 3, color: shadowColor, offset: Offset(1, 2)),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 13),
            margin:
                const EdgeInsets.only(bottom: 30, right: 18, left: 15, top: 0),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              currentIndex: controller.tabIndex,
              onTap: controller.changeTabIndex,
              items: [
                _bottombarItem(Icons.home, 'الرئيسية'),
                _bottombarItem(Icons.house, 'الشركاء'),
                _bottombarItem(Icons.category, 'المنتجات'),
                _bottombarItem(Icons.mail, 'الرسايل'),
                _bottombarItem(Icons.person, 'البروفايل'),
              ],
            ),
          ),
        );
      }),
    );
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
