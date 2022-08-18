import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: imgList.length,
        itemBuilder: ((context, index, realIndex) {
          final imgLists = imgList[index];
          return builderImage(imgLists, index);
        }),
        options: CarouselOptions(height: 400));
  }
}

Widget builderImage(String imgLists, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: SvgPicture.asset(
        'assets/images/sport.svg',
        semanticsLabel: 'Acme Logo',
        height: 200,
      ),
    );
// картинки для carousel_slider
final imgList = [''];
