import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:social_media/converter/data_converter.dart';
import 'package:social_media/model/comment.dart';
import 'package:social_media/model/posts.dart';
//import 'package:social_media/view/uploadstatus.dart';
class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFilePicker;
  late TextEditingController txtToDoControllerComment;
  set _imageFile(XFile? value) {
    _imageFilePicker = value;
  }

  @override
  Widget build(BuildContext context) {
    DataConvert dataConvert=Provider.of<DataConvert>(context);
    Post post=Provider.of<Post>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Material(
        child: Column(
          children: [
            Expanded(child: _buildListComments(post)),
            Container(
              alignment: Alignment.topLeft,
                child: _previewImages()
            ),
            Row(
              children: [
                Expanded(
                  child:
                  TextField(
                      controller: txtToDoControllerComment,
                      decoration: InputDecoration(
                        labelText: "Comment...",
                        border: OutlineInputBorder( //Outline border type for TextField
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      )
                    ),
                  ),
                IconButton(
                  icon: Icon(Icons.image),
                  onPressed: (){
                    _onImageButtonPressed(ImageSource.gallery, context: context);
                    },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () async {
                    String pathImage,content;
                    content=txtToDoControllerComment.text;
                    try{
                      File file=File(_imageFilePicker!.path);
                      pathImage=await storeImageAndGetPath(file);
                    }catch(e){
                      pathImage="";
                    }
                    if(pathImage==""&&content==""){
                      return;
                    }else{
                      await dataConvert.insertDataComment(content,pathImage,dataConvert.currentUser,post);
                      XFile? file;
                      _imageFilePicker=file;
                      txtToDoControllerComment=TextEditingController();
                      setState(() {
                        post=Provider.of<Post>(context);
                      });
                    }
                    },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildListComments(Post post){
    return ListView.builder(
        itemCount: post.comments!.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context,i){
          return _buildRow(post.comments![i]);
        },
    );
  }
  Widget _buildRow(Comment comment){
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage:
              NetworkImage(comment.user!.picture.toString()),
              backgroundColor: Colors.black,
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: -9,
                      blurRadius: 15,
                    ),
                  ]
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(comment.user!.name.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(comment.content.toString(), style: TextStyle(fontSize: 15),),
                    SizedBox(height: 5,),
                    Image.file(
                      File(comment.image.toString()),
                      errorBuilder: (context,error,stacktrace){
                        return Container();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    txtToDoControllerComment=TextEditingController();
  }
  void _onImageButtonPressed(ImageSource source, {BuildContext? context}) async {
    final pickedFile = await _picker.pickImage(source: source);
    setState(() {
      _imageFile = pickedFile;
      },
    );
  }
  Future<String> storeImageAndGetPath(File file) async{
    final Directory directory = await getApplicationDocumentsDirectory();
    String fileName=basename(file.path);
    final File newImage = await file.copy('${directory.path}/$fileName');
    return newImage.path.toString();
  }
  Widget _previewImages() {
    if (_imageFilePicker != null) {
      return Semantics(
        label: "image_picker_example_picked_image",
        child: Container(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: [
              SizedBox(
                height: 75,
                width: 55,
                child: kIsWeb
                    ? Image.network(_imageFilePicker.toString())
                    : Image.file(File(_imageFilePicker!.path)),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: GestureDetector(
                  onTap: (){
                    XFile? file;
                    _imageFilePicker=file;
                    setState((){
                    });
                  },
                  child: Icon(
                    Icons.delete_forever,
                  ),
                ),
              ),
            ]
          ),
        ),
      );
    } else if (_imageFilePicker == null) {
      return Container();
    } else {
      return Container();
    }
  }
}
