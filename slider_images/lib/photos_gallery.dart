import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
class GalleryPage extends StatelessWidget {
  GalleryPage({Key? key}) : super(key: key);
  final imageList=[
    "https://storage.googleapis.com/support-kms-prod/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Google_web_search.png/800px-Google_web_search.png",
    "https://goodgood.vn/wp-content/uploads/2021/08/10-san-pham-that-bai-cua-google-11.png",
    "https://cdn.pixabay.com/photo/2014/10/12/12/38/google-485611_1280.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gallery"),),
      body: PhotoViewGallery.builder(itemCount: imageList.length, builder: (context,index){
        return PhotoViewGalleryPageOptions(imageProvider: NetworkImage(imageList[index]),);
      }),
    );
  }
}
