import 'package:flutter/material.dart';
import 'package:bloc_demo/module/search/search_bloc.dart';
class SearchBox extends StatefulWidget {
  final SearchBloc? bloc;
  const SearchBox({Key? key,this.bloc}) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchController=TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      widget.bloc!.search(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child:TextFormField(
        controller: searchController,
        decoration: const InputDecoration(
          suffixIcon: Icon(Icons.search),
          hintText: 'Search...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)
            ),
          ),
        ),
      ),
    );
  }
}
