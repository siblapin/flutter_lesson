// Flutter imports:
import 'package:flutter/material.dart';
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
          title: const textAppBar(),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(child: const carouselWidget()),
            ],
          ),
        ),
      ),
    );
  }
}

class textAppBar extends StatelessWidget {
  const textAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Урок 1',
      style: TextStyle(fontFamily: 'ofont_Garet', fontSize: 40),
    ));
  }
}
