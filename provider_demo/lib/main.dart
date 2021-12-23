import 'package:flutter/material.dart';
import 'package:provider_demo/basic.dart';
import 'package:provider_demo/demo_value_listenale_builder.dart';

import 'demo_change_notifier.dart';
import 'demo_future_provider.dart';
import 'demo_multiple_provider.dart';
import 'demo_proxy_provider.dart';
import 'demo_stream_provider.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo provider"),
        ),
        body: const DemoStreamProvider(),
      ),
    );
  }
}
