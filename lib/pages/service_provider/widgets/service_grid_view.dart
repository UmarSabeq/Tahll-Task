import 'package:flutter/material.dart';

class ServiceGridView extends StatelessWidget {
  const ServiceGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        GridView.count(
          crossAxisCount: 2,
          padding:
              const EdgeInsets.only(top: 10, bottom: 20, right: 18, left: 15),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(6, (index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/studio.jpg',
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ],
    );
  }
}
