import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/pages/service_provider/widgets/service_grid_view.dart';
import 'package:task/pages/service_provider/widgets/tabs_button.dart';
import 'package:task/pages/service_provider/widgets/tabs_content.dart';
import '../../constants/colors.dart';
import '../widgets/custom_appbar.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(
              children: [
                const CustomAppBar(
                  rightIcon: 'assets/images/arrow-back.svg',
                  middle: Text(
                    'مقدم الخدمه',
                    style: TextStyle(fontSize: 16, color: appBapTextColor),
                  ),
                  rightIconH: 14,
                  righrIconV: 11,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/service.png',
                              width: 116,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'استوديوهات دبي',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: semiBlackColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RatingBar(
                              onRatingUpdate: (double value) {},
                              ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: lightBlueColor,
                                ),
                                half: const Icon(
                                  Icons.star,
                                  color: lightBlueColor,
                                ),
                                empty: const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                ),
                              ),
                              initialRating: 4,
                              itemSize: 27,
                            ),
                            const SizedBox(
                              height: 26,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 18, left: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: containerColor,
                                        border: Border.all(color: borderColor),
                                        // ignore: prefer_const_literals_to_create_immutables
                                        boxShadow: [
                                          const BoxShadow(
                                              blurRadius: 5,
                                              color: shadowColor,
                                              offset: Offset(3, 4)),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/images/blue-star.svg'),
                                          const SizedBox(width: 9),
                                          const Text(
                                            '10\t اراء',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: purpleColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: containerColor,
                                        border: Border.all(color: borderColor),
                                        // ignore: prefer_const_literals_to_create_immutables
                                        boxShadow: [
                                          const BoxShadow(
                                              blurRadius: 5,
                                              color: shadowColor,
                                              offset: Offset(3, 4)),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: SvgPicture.asset(
                                                'assets/images/location.svg'),
                                          ),
                                          const Text(
                                            'دبي-شارع الدمام',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: purpleColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const TabsButton(),
                            const TabsContent(),
                            const Padding(
                              padding: EdgeInsets.only(right: 24),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'صور المكان',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: semiBlackColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const ServiceGridView()
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF5257A2),
                                    Color(0xFF5BBFEE),
                                  ],
                                )),
                            margin: const EdgeInsets.only(bottom: 20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .91,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(),
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent),
                                  onPressed: () {},
                                  child: const Text(
                                    'انشاء طلب',
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
