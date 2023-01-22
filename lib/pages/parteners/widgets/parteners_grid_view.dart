import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import '../../service_provider/service_provider.dart';

class PartenersGridView extends StatelessWidget {
  const PartenersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => Get.to(() => const ServiceProvider())),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Flex(direction: Axis.vertical, children: [
          GridView.count(
              padding: const EdgeInsets.only(
                  top: 22, bottom: 15, right: 18, left: 15),
              mainAxisSpacing: 25,
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
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(color: borderColor)),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/parteners.png',
                              ),
                              const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 15),
                                  child: Text(
                                    'استوديو الدمام للتصوير',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: semiBlackColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              })),
        ]),
      ),
    );
  }
}
