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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: Scaffold(body: profileView())),
    );
  }
  Widget profileView() {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50 ,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.black54,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                ),
                const Text(
                  'Profiles details',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24,width: 24)
              ],
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0,0 ,50),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(
                      'images/girl.jpg',
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(bottom: 1, right: 1 ,child: Container(
                  height: 40, width: 40,
                  child: const Icon(Icons.add_a_photo, color: Colors.white,),
                  decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                 ),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black54,
                    Color.fromRGBO(0, 41, 102, 1)
                  ]
              )
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                child: Container(
                  height: 60,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ), decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 1.0, color: Colors.white70),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Email', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Type something about yourself',
                        style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Phone number', style: TextStyle(color: Colors.white70),),
                    ),
                  ), decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container( height: 70, width: 200,
                    child: const Align(
                      child: Text('Save',
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),),
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),)
                    ),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}

