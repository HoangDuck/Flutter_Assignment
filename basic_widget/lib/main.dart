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
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Demo widget",style: TextStyle(fontSize: 40))),
        ),
        body: const HomePageStack(),
      ),
    );
  }
}
//demo container widget
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
// container để chứa thêm 1 widget khác và widget này hình chữ nhật coi nó như 1 cái container
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(100),
      padding: const EdgeInsets.all(30),
      width: 100,
      height: 100,
      color: Colors.red,
      child: const Text(
        "Red",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
//demo column
class HomePageColumn extends StatelessWidget {
  const HomePageColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //column chứa danh sách các widget con bên trong
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //với các thuộc tính sau thì sẽ ghi đè thuộc tính trước với cái này để max sẽ hoạt động bình thường
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.up,//đảo chiều của danh sách widget theo chiều dọc
        children: const [//expanded để tự động xuống hàng khi hàng ngang hết không gian
          Expanded(child:Text("Text 1",style: TextStyle(fontSize: 40),),),
          Expanded(child: Text("Text 2",style: TextStyle(fontSize: 40),)),
          Expanded(child:Text("Text 3",style: TextStyle(fontSize: 40)),),
          Expanded(child:Text("Text 4",style: TextStyle(fontSize: 40)),)
        ],
      ),
    );
  }
}
//stack là widget sau sẽ ghi đè lên widget trước
class HomePageStack extends StatelessWidget {
  const HomePageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(
        //khi sử dụng stack thì sử dụng thêm widget positioned để định vị trí của widget con
        children: [
          Positioned(
              top:40,
              left: 50,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
          )),
          Positioned(
              top:60,
              left: 70,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              )),
          Positioned(
              top:80,
              left: 90,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
              )),
        ],
      )
    );
  }
}

