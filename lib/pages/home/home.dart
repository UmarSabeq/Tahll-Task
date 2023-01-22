import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/pages/home/widgets/home_list.dart';
import 'package:task/pages/home/widgets/home_slider_container.dart';
import '../../constants/colors.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/search_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            CustomAppBar(
              rightIcon: 'assets/images/bar-chart.svg',
              middle: SvgPicture.asset('assets/images/logo.svg'),
              rightIconH: 10,
              righrIconV: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SearchWidget(
                    leftPadding: 15,
                    bgIconColor: purpleColor,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 18, left: 15),
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: containerColor,
                        border: Border.all(color: borderColor),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                              blurRadius: 5,
                              color: shadowColor,
                              offset: Offset(3, 4)),
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            decoration: const BoxDecoration(
                                border: Border(
                                    left: BorderSide(color: borderColor))),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/write.svg'),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'انشاء طلب',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: null,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 12,
                                ),
                                SvgPicture.asset('assets/images/suits.svg'),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'البدله',
                                  style: TextStyle(
                                      fontSize: 12, color: lightBlueColor),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                SvgPicture.asset('assets/images/arrow-down.svg')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const HomeSliderContainer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'الخدمات',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'مشاهدة المزيد',
                          style: TextStyle(fontSize: 14, color: lightBlueColor),
                        )
                      ],
                    ),
                  ),
                  const HomeList(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
