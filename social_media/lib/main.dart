import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IGEKU',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 75,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 9.0),
                  icon: const Icon(Icons.home),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 10.0),
                  icon: const Icon(Icons.chat),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 14.0),
                  icon: const Icon(Icons.my_library_add_rounded),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 14.0),
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                  }
                ),
                IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(right: 10.0),
                  icon: const Icon(Icons.account_circle_outlined),
                  onPressed: () {
                  },
                )
              ],
            ),
          ),
        )
      ),

    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("IGEKU",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xff002fff),
                        Color(0xff00f4ff),
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                ),
              ),
              RaisedButton.icon(onPressed: (){

              },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  icon: const Icon(Icons.search),
                  label: const Text("")),

            ],
          ),
          SizedBox(height: 10),
          ListAvatar(),
          SizedBox(height: 10),
          ListPosts(),
        ],
      ),
    );
  }
}
class ListAvatar extends StatefulWidget {
  const ListAvatar({Key? key}) : super(key: key);

  @override
  _ListAvatarState createState() => _ListAvatarState();
}

class _ListAvatarState extends State<ListAvatar> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 70.0,
          maxHeight: 70.0,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 70.0,
              height: 70.0,
              color: Colors.red,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.blue,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.green,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.yellow,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.orange,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.red,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.blue,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.green,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.yellow,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.orange,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.red,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.blue,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.green,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.yellow,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.orange,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.red,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.blue,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.green,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.yellow,
            ),
            Container(
              width: 70.0,height: 70.0,
              color: Colors.orange,
            ),
          ],
        ),
      );

  }
}

class ListPosts extends StatefulWidget {
  const ListPosts({Key? key}) : super(key: key);

  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            color: Colors.red,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.green,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.yellow,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.orange,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.red,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.green,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.yellow,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.orange,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.red,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.green,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.yellow,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.orange,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.red,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.blue,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.green,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.yellow,
          ),
          Container(
            width: 60.0,height: 60.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
