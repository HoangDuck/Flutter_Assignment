import 'package:bloc_demo/module/search/search_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Result extends StatefulWidget {
  final SearchBloc? bloc;
  const Result({Key? key,this.bloc}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<List<String>>(
        initialData: [],
        stream: widget.bloc!.searchController.stream,
        builder: (context,snapshot){
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context,index){
                return _buildRow(snapshot.data![index]);
              });
        },
      ),
    );
  }
  Widget _buildRow(String data){
    return Container(
        padding: const EdgeInsets.all(10),
        child:Text(data,style: const TextStyle(fontSize: 17, color: Colors.red),)
    );
  }
}
