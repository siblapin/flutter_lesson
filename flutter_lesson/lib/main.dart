// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'carouselWidget.dart';

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
              Container(child: carouselWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
