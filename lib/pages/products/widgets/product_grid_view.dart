import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/colors.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Flex(direction: Axis.vertical, children: [
        GridView.count(
            padding:
                const EdgeInsets.only(top: 22, bottom: 15, right: 18, left: 15),
            mainAxisSpacing: 90,
            crossAxisSpacing: 36,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return Stack(
                children: [
                  Wrap(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(27),
                            border: Border.all(color: borderColor)),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/beautician.png',
                            ),
                            const Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: 13, top: 5, bottom: 11.5),
                                child: Text(
                                  'حلاقة الشعر',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: semiBlackColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, left: 27, bottom: 11),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: null,
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/mark.png'),
                                        const SizedBox(
                                          width: 7.5,
                                        ),
                                        const Text(
                                          '35.00\$',
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.bold,
                                            color: semiBlackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: null,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/star.svg'),
                                        const SizedBox(
                                          width: 7.5,
                                        ),
                                        const Text(
                                          '4.8',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: semiBlackColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/images/shopping-basket-Regular.svg'),
                              label: const Text('إضافة إلى العربة'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  textStyle: const TextStyle(
                                      fontSize: 10, fontFamily: 'Loew'),
                                  shape: const StadiumBorder(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, left: 9),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: semiRedColor,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/love.png')),
                    ),
                  ),
                ],
              );
            })),
      ]),
    );
  }
}
