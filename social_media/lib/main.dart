import 'dart:ui';
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
      title: 'Flutter GSOT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: const HomePage(),
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
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.chat),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.my_library_add_rounded),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                    }
                  ),
                  IconButton(
                    iconSize: 30.0,
                    icon: const Icon(Icons.account_circle_outlined),
                    onPressed: () {
                    },
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("GSOT",
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
                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                ),
              ),
              SizedBox(
                  width: 35,
                  height: 35,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: IconButton(
                      color: Colors.black,
                      icon: const Icon(Icons.search),
                      onPressed: () {
                      },
                    ),
                  ),
                ),

            ],
          ),
          const SizedBox(height: 10),
          ListAvatar(),
          const SizedBox(height: 10),
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
          maxHeight: 90.0,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                              color: Colors.grey,
                              icon: const Icon(Icons.add),
                              onPressed: () {
                              },
                            ),
                          ),
                        ),
                      ),
                  const Text("You",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //1
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Duc",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //2
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Minh",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //3
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("An",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //4
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Dai",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //1
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Duc",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //2
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Minh",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //3
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("An",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            //4
            SizedBox(
              width: 80.0,
              height: 70.0,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.blue,
                          width: 2
                      ),
                    ),
                    child: SizedBox(
                      width: 65,
                      height: 65,
                      child: Ink(
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child:IconButton(
                          color: Colors.grey,
                          icon: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323"),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ),
                  const Text("Dai",style: TextStyle(fontSize: 18),)
                ],
              ),
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
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.more_vert),
                            ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                        color: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: const Icon(Icons.bookmark),
                              ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Icon(Icons.more_vert),
                          ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.bookmark),
                            ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Icon(Icons.more_vert),
                          ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.bookmark),
                            ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Icon(Icons.more_vert),
                          ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.bookmark),
                            ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Icon(Icons.more_vert),
                          ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.bookmark),
                            ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 0.0,
                      blurRadius: 20,
                    ),
                  ]
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 65.0,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        SizedBox(
                            height: 50,
                            child: Image.network("https://firebasestorage.googleapis.com/v0/b/quickstart-1614695450393.appspot.com/o/download.jpg?alt=media&token=3072bf38-28e9-4574-bcd5-30eea8411323")
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Hoàng Đức", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text("@duckute", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Icon(Icons.more_vert),
                          ),
                        ),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: const Text("Xin chào. Tôi là Đức. Đây chính là bài post "
                        "đầu tiên trong app mạng xã hội IGEKU.",style: TextStyle(fontSize: 20, color: Colors.black54),),
                  ),
                  Container(
                    decoration: const ShapeDecoration(
                      color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                    ),
                    child: SizedBox(
                      height: 50.0,
                      child: Row(
                        children: [
                          const SizedBox(width: 15,),
                          const Icon(Icons.chat_bubble_outlined),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 15,),
                          const Icon(Icons.favorite),
                          const Text("12",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(Icons.bookmark),
                            ),
                          ),
                          const SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
