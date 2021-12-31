import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GSOT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Pages()
    );
  }
}
class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final PageController _myPage = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: const Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: const Icon(Icons.chat),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: const Icon(Icons.my_library_add_rounded),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                  iconSize: 30.0,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    setState(() {
                      _myPage.jumpToPage(3);
                    });
                  }
              ),
              IconButton(
                iconSize: 30.0,
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(4);
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        children: <Widget>[
          const HomePage(),
          Center(
            child: Container(
              child: const Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: const Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: const Text('Empty Body 3'),
            ),
          ),
          Center(
            child: Container(
              child: const Text('Empty Body 4'),
            ),
          )
        ],
        physics: const NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
    );
  }
}


