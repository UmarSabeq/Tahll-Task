import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeList extends StatelessWidget {
  const HomeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(3),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 17),
          leading: SizedBox(
            child: Image.asset(
              'assets/images/handsome.png',
            ),
          ),
          title: const Text(
            'تصفيف الشعر',
            style: TextStyle(fontSize: 15),
          ),
          trailing: SvgPicture.asset('assets/images/arrow.svg'),
        );
      },
    );
  }
}
