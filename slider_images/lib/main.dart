import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://storage.googleapis.com/support-kms-prod/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK',
  'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_160x56dp.png',
];


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
        body: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;
            return CarouselSlider(
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
              ),
              items: imgList
                  .map((item) => Container(
                child: Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: height,
                    )),
              ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
