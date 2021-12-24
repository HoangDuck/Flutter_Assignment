import 'package:bloc_demo/module/search/search_bloc.dart';
import 'package:bloc_demo/module/search/search_box.dart';
import 'package:bloc_demo/module/search/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBox(),
          Expanded(
            child: Result(),
          ),
        ],
      ),
    );
  }
}