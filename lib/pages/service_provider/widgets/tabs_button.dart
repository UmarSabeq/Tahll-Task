import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class TabsButton extends StatelessWidget {
  const TabsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, bottom: 10, right: 18),
      child: ButtonsTabBar(
        buttonMargin: const EdgeInsets.all(4),
        height: 55,
        radius: 12,
        backgroundColor: appBapTextColor,
        unselectedBackgroundColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        labelStyle: const TextStyle(
            fontFamily: 'Loew',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'Loew',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey),
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          const Tab(
            text: 'التفاصيل',
          ),
          const Tab(
            text: 'المنتجات',
          ),
          const Tab(
            text: 'اراء العملاء',
          ),
        ],
      ),
    );
  }
}
