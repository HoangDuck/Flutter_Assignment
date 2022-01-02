import 'dart:ui';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
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
                        shadows: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0.0,
                            blurRadius: 20,
                          ),
                        ]
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
      child: _buildSuggestions(),
    );
  }
  Widget _buildSuggestions(){
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context,i){
        if(i==0) return _AddingWidget();
        return _buildRow("data");
      },
    );
  }
  Widget _AddingWidget(){
    return SizedBox(
      width: 70.0,
      height: 60.0,
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
              width: 55,
              height: 55,
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
    );
  }
  Widget _buildRow(String data) {
    return ListTile(
      title: SizedBox(
        width: 70.0,
        height: 60.0,
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
                width: 55,
                height: 55,
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
        ],
      ),
    );
  }
}