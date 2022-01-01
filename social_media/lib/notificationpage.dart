import 'package:flutter/material.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
              const Text("Notifications",
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ListNotifications(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListNotifications extends StatefulWidget {
  const ListNotifications({Key? key}) : super(key: key);

  @override
  _ListNotificationsState createState() => _ListNotificationsState();
}

class _ListNotificationsState extends State<ListNotifications> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          children:[
            const SizedBox(height: 15,),
            const Text(
              "New",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 15,),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Text(
              "Earlier",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 15,),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Text(
              "This week",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 15,),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
