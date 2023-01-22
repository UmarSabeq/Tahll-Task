import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/pages/parteners/widgets/parteners_grid_view.dart';
import '../../constants/colors.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/search_widget.dart';

class Parteners extends StatelessWidget {
  const Parteners({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(
              rightIcon: 'assets/images/arrow-back.svg',
              middle: Text(
                'الشركاء',
                style: TextStyle(fontSize: 16, color: appBapTextColor),
              ),
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
                  const PartenersGridView(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
