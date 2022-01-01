import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Chats",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
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
          const SizedBox(height: 10),
          const TextField(
              //controller: username,
              decoration: InputDecoration(
                labelText: "Search chat here..",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder( //Outline border type for TextFeild
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              )
          ),
          const SizedBox(height: 10),
          const QuickChat(),
          const Expanded(child: Messages()),
        ],
      ),
    );
  }
}
class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Messages",
          style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
        SizedBox(height: 10),
        ListMessages(),
      ],
    );
  }
}
class ListMessages extends StatefulWidget {
  const ListMessages({Key? key}) : super(key: key);

  @override
  _ListMessagesState createState() => _ListMessagesState();
}

class _ListMessagesState extends State<ListMessages> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children:[
          Container(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: -9,
                      blurRadius: 15,
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
                              Text("Hoàng Đức", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text("Hello", style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text("Just now", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    color: Colors.purple, // border color
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2), // border width
                                    child: Container( // or ClipRRect if you need to clip the content
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.purple, // inner circle color
                                      ),
                                      child: const Center(
                                          child: Text(
                                            "2",
                                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                          ),
                                      ), // inner content
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

class QuickChat extends StatefulWidget {
  const QuickChat({Key? key}) : super(key: key);

  @override
  _QuickChatState createState() => _QuickChatState();
}

class _QuickChatState extends State<QuickChat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Quick Chat",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
          ),
        ),
        SizedBox(height: 10),
        ListAvatarOnline(),
      ],
    );
  }
}
class ListAvatarOnline extends StatefulWidget {
  const ListAvatarOnline({Key? key}) : super(key: key);

  @override
  _ListAvatarOnlineState createState() => _ListAvatarOnlineState();
}

class _ListAvatarOnlineState extends State<ListAvatarOnline> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 85.0,
      ),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          //1
          SizedBox(
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
        ],
      ),
    );
  }
}