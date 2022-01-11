
import 'package:bloc_demo/module/search/search_box.dart';
import 'package:bloc_demo/module/search/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SearchBox(),
        Expanded(
          child: Result(),
        ),
      ],
    );
  }
}