
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
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.send), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      //floating action button location to left

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Colors.redAccent,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left:90),
              child:IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
            ),
            IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
          ],
        ),
      ),
    );

  }
}
