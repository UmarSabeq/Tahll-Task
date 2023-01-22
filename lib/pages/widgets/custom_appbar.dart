import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.rightIcon,
    required this.middle,
    required this.rightIconH,
    required this.righrIconV,
  }) : super(key: key);

  final String rightIcon;
  final Widget middle;
  final double rightIconH;
  final double righrIconV;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 30, right: 18, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: rightIconH, vertical: righrIconV),
                decoration: BoxDecoration(
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(8)),
                child: SvgPicture.asset(rightIcon)),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: middle,
            ),
            Container(
              color: null,
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: SvgPicture.asset(
                          'assets/images/shopping-basket.svg')),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.all(10.5),
                      decoration: BoxDecoration(
                          border: Border.all(color: borderColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: SvgPicture.asset('assets/images/alert.svg')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
