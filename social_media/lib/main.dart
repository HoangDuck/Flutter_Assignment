import 'package:flutter/material.dart';
import 'package:social_media/chat.dart';
import 'package:social_media/model/messages.dart';
import 'package:social_media/model/posts.dart';
import 'package:social_media/model/user.dart';
import 'package:social_media/notificationpage.dart';
import 'package:social_media/popupadd.dart';

import 'homepage.dart';

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
      home: const SafeArea(child: Pages())
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
                    PopupAdd(context);
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
          Container(
              padding: const EdgeInsets.all(10),
              child: const ChatPage(),
          ),
          const Center(
            child: Text('Empty Body 2'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const NotificationPage(),
          ),
          const Center(
            child: Text('Empty Body 4'),
          )
        ],
        physics: const NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
    );
  }
}


