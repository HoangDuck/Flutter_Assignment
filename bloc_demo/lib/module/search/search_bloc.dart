import 'dart:async';

class SearchBloc{
  var data=[
    "Android",
    "iOS",
    "Golang",
    "Flutter",
    "Java",
    "Python",
    "Ruby",
    "PHP",
    "Swift"
  ];
  StreamController<List<String>> searchController = StreamController<List<String>>();
  search(String query){
    if(query.isEmpty){
      searchController.sink.add(data);
      return;
    }
    _filter(query).then((value){
      searchController.sink.add(value);
    });
  }
  Future<List<String>> _filter(query){
    var c = Completer<List<String>>();
    List<String> result=[];
    for (var value in data) {
      if(value.contains(query)){
        result.add(value);
      }
    }
    c.complete(result);
    return c.future;
  }
  dispose(){
    searchController.close();
  }
}