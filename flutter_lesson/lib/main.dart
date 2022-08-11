import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                width: 200,
                height: 200,
                child: Image.asset('assets/images/1.jpg'),
              ),
              Container(
                child: const Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'Рисунок',
                      style: TextStyle(fontFamily: 'ofont_Garet', fontSize: 30),
                    ),
                    TextSpan(
                        text: 'MAC',
                        style: TextStyle(
                            fontFamily: 'ofont_Garet',
                            fontSize: 40,
                            color: Colors.red))
                  ]),
                ),
              ),
              Container(
                child: Shimmer.fromColors(
                    child: const Text(
                      'RUSSIA',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    baseColor: Colors.blue,
                    highlightColor: Colors.red),
              ),
              Container(
                child: SvgPicture.asset(
                  'assets/images/sport.svg',
                  semanticsLabel: 'Acme Logo',
                  height: 200,
                ),
              ),
              Container(
                child: CarouselSlider(
                    items: null, options: CarouselOptions(height: 100)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
