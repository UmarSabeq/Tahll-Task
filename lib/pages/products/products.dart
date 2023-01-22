import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/constants/colors.dart';
import 'package:task/pages/products/widgets/product_grid_view.dart';
import 'package:task/pages/widgets/custom_appbar.dart';
import 'package:task/pages/widgets/search_widget.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              CustomAppBar(
                rightIcon: 'assets/images/arrow-back.svg',
                middle: SvgPicture.asset('assets/images/logo.svg'),
                rightIconH: 14,
                righrIconV: 11,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                              flex: 7,
                              child: SearchWidget(
                                leftPadding: 8,
                                bgIconColor: lightBlueColor,
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: borderColor),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: SvgPicture.asset(
                                      'assets/images/svgexport.svg'))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 18,
                        top: 10,
                      ),
                      child: ButtonsTabBar(
                        radius: 100,
                        backgroundColor: purpleColor,
                        unselectedBackgroundColor: Colors.white,
                        borderWidth: 1,
                        borderColor: borderColor,
                        unselectedBorderColor: borderColor,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        labelStyle: const TextStyle(
                            fontFamily: 'Loew',
                            fontSize: 12,
                            color: Colors.white),
                        unselectedLabelStyle: const TextStyle(
                            fontFamily: 'Loew',
                            fontSize: 12,
                            color: appBapTextColor),
                        height: 50,
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          const Tab(
                            text: 'جميع المنتجات',
                          ),
                          const Tab(
                            text: 'صالات',
                          ),
                          const Tab(
                            text: 'تصفيف الشعر',
                          ),
                          const Tab(
                            text: 'استوديوهات تصوير',
                          ),
                        ],
                      ),
                    ),
                    const ProductGridView()
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
