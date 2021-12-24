import 'package:flutter/material.dart';
import 'package:bloc_demo/module/search/search_bloc.dart';
import 'package:provider/provider.dart';
class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchController=TextEditingController();

  @override
  void initState() {
    super.initState();

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var bloc=Provider.of<SearchBloc>(context);
    searchController.addListener(() {
      bloc.search(searchController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchBloc>(
      builder:(context, bloc, child) => Container(
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
      ),
    );
  }
}
