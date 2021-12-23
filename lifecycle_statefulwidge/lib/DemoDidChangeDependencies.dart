import 'package:flutter/material.dart';
class Demo3 extends StatefulWidget {
  const Demo3({Key? key}) : super(key: key);

  @override
  _Demo3State createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ShareDataWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TestDidChangeDependenciesWidget(),
            RaisedButton(
              child: Text("Increment"),
                onPressed: () => setState(() {
                  ++count;
                })
            )
          ],
        ),
      ),
    );
  }
}
class TestDidChangeDependenciesWidget extends StatefulWidget {
  const TestDidChangeDependenciesWidget({Key? key}) : super(key: key);

  @override
  _TestDidChangeDependenciesWidgetState createState() => _TestDidChangeDependenciesWidgetState();
}

class _TestDidChangeDependenciesWidgetState extends State<TestDidChangeDependenciesWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context)!.data.toString(),
      style: TextStyle(fontSize: 20),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }
}

class ShareDataWidget extends InheritedWidget{


  ShareDataWidget({Key? key, required this.data,required Widget child}):super(key: key, child: child);
  final int data;
  static ShareDataWidget? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}