// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Урок 1',
            style: TextStyle(fontFamily: 'ofont_Garet', fontSize: 40),
          )),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                  child: CarouselSlider.builder(
                      itemCount: imgList.length,
                      itemBuilder: ((context, index, realIndex) {
                        final imgLists = imgList[index];
                        return builderImage(imgLists, index);
                      }),
                      options: CarouselOptions(height: 400))),
            ],
          ),
        ),
      ),
    );
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
