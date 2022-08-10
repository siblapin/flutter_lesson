import 'package:flutter/material.dart';

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
            style: TextStyle(fontFamily: 'ofont_Garet', fontSize: 10),
          )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset('assets/images/1.jpg'),
              alignment: AlignmentGeometry.lerp(
                  Alignment.bottomLeft, Alignment.bottomRight, 100),
            ),
          ],
        ),
      ),
    );
  }
}
