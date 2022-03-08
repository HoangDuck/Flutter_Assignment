import 'package:flutter/material.dart';
import 'package:slider_images/photos_gallery.dart';

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
      home: GalleryPage(),
    );
  }
}
