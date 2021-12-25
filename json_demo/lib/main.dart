import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:json_demo/order.dart';
void main() {
  runApp(const MyApp());
}
const jsonString='''
{
  "orderId": 123456,
  "user":{
    "fullName": "Ryan Nguyen",
    "email": "ryan@gmail.com"
  },
  "products":[
    {
      "productId": 123,
      "productName": "Macbook",
      "quantity": 10,
      "price": 100.5
    },
    {
      "productId": 123,
      "productName": "Iphone",
      "quantity": 10,
      "price": 100.5
    },
    {
      "productId": 123,
      "productName": "Ipad",
      "quantity": 10,
      "price": 100.5
    }
  ]
}
''';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: JsonInfoWidget(),
      ),
    );
  }
}
class JsonInfoWidget extends StatefulWidget {
  const JsonInfoWidget({Key? key}) : super(key: key);

  @override
  _JsonInfoWidgetState createState() => _JsonInfoWidgetState();
}

class _JsonInfoWidgetState extends State<JsonInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text("Click",style: TextStyle(fontSize: 20),),
        onPressed: (){
          Map<String, dynamic> map=jsonDecode(jsonString);
          var order=Order.fromJson(map);
          print(order.orderId);
          print(order.user!.email);
          print(order.user!.fullName);
          print("===========================");
          order.products!.forEach((product) {
            print(product.productName);
            print('-----------------------------');
          });
        },
      ),
    );
  }
}
