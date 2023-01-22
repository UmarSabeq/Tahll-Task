import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.leftPadding,
    required this.bgIconColor,
  }) : super(key: key);

  final double leftPadding;
  final Color bgIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18, left: leftPadding),
      padding: const EdgeInsets.only(top: 10, bottom: 8, right: 10, left: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'ابحث الان',
            style: TextStyle(fontSize: 12),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: bgIconColor, borderRadius: BorderRadius.circular(8)),
            child: SvgPicture.asset('assets/images/Search-icon.svg'),
          ),
        ],
      ),
    );
  }
}
