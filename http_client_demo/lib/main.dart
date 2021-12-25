import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
//import 'dart:io';
//import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
void main() {
  runApp(const MyApp());
}

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
        body: Center(
          child: DemoNetwork(),
        ),
      ),
    );
  }
}
class DemoNetwork extends StatefulWidget {
  const DemoNetwork({Key? key}) : super(key: key);

  @override
  _DemoNetworkState createState() => _DemoNetworkState();
}

class _DemoNetworkState extends State<DemoNetwork> {
  String title="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$title",style: const TextStyle(fontSize: 20),),
          RaisedButton(
            onPressed: (){
              getHttp();
            },
            child: const Text("Make request"),
          ),
        ],
      ),
    );
  }
  void getHttp() async{
    try{
      Response response= await Dio().get('https://jsonplaceholder.typicode.com/posts/1');
      print(response);
    }catch(e){
      print(e);
    }
  }
  // makeHttpGetFromDartIO() {
  //   HttpClient client= HttpClient();
  //   Uri uri= Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  //   client.getUrl(uri).then((HttpClientRequest request){
  //     return request.close();
  //   }).then((HttpClientResponse reponse){
  //     var content= StringBuffer();
  //     reponse.transform(utf8.decoder).listen((data) {
  //       content.write(data);
  //       var post= Post.fromJson(jsonDecode(content.toString()));
  //           setState(() {
  //             title=post.title!;
  //           });
  //     });
  //   });
  // }
  // makeHttpGet() async{
  //   Uri uri= Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  //   final response= await http.get(uri);
  //   //nếu response có status code lớn hơn hoặc bằng 200 và nhỏ hơn 300 thì đây là request thành công
  //   if(response.statusCode==200){
  //     print(response.body);
  //     var post= Post.fromJson(jsonDecode(response.body));
  //     setState(() {
  //       title=post.title!;
  //     });
  //   }
  // }
  // makeHttpPost() async{
  //   Uri uri= Uri.parse('https://jsonplaceholder.typicode.com/posts');
  //   var client=http.Client();
  //   final response= await client.post(uri,
  //   body: {
  //     'title': 'Code4func',
  //     'body': 'bodyCode4func',
  //   }
  //   );
  //   if(response.statusCode==201){
  //     var post= Post.fromJson(jsonDecode(response.body));
  //     setState(() {
  //       title=post.title!;
  //     });
  //   }

}
class Post{
  int? userId;
  int? id;
  String? title;
  String? body;
  Post({this.userId,this.id,this.title,this.body});
  factory Post.fromJson(Map<String,dynamic> json){
    return Post(
      userId: json['userId'],
      id:json['id'],
      title: json['title'],
      body: json['body']
    );
  }
}