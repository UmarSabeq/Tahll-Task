import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -30,
      child: Container(
        color: null,
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          items: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Image.asset('assets/images/background.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 70, right: 10, left: 0),
                child: Center(
                  child: Text(
                    'خصم ٢٠%\n على اتليهات فساتين',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Image.asset('assets/images/background.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 70, right: 10, left: 0),
                child: Center(
                  child: Text(
                    'خصم ٢٠%\n على اتليهات فساتين',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                child: Image.asset('assets/images/background.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 70, right: 10, left: 10),
                child: Center(
                  child: Text(
                    'خصم ٢٠%\n على اتليهات فساتين',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
          ],
          options: CarouselOptions(
              viewportFraction: .8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              scrollDirection: Axis.horizontal),
        ),
      ),
    );
  }
}
