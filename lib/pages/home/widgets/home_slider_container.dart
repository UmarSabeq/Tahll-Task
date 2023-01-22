import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import 'custom_slider.dart';

class HomeSliderContainer extends StatelessWidget {
  const HomeSliderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 280,
          margin:
              const EdgeInsets.only(right: 18, left: 15, bottom: 10, top: 5),
          padding: const EdgeInsets.only(top: 25, right: 26, left: 21),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(blurRadius: 6, color: shadowColor),
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'افضل العروض',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10.5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(blurRadius: 5, color: shadowColor),
                      ]),
                  child: SvgPicture.asset('assets/images/send.svg'))
            ],
          ),
        ),
        const CustomSlider(),
      ],
    );
  }
}
