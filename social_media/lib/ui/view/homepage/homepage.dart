import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:social_media/core/converter/data_converter.dart';
import 'package:social_media/core/model/posts.dart';
import 'package:social_media/core/model/user.dart';
import 'package:social_media/ui/constant/app_colors.dart';

//import 'package:social_media/ui/constant/shapedecorationbuttonsearch.dart';
import 'package:social_media/ui/constant/text_styles.dart';

//import 'package:social_media/ui/view/homepage/uploadstatus.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
//import 'commentpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListPosts();
  }
}

class ListAvatar extends StatefulWidget {
  const ListAvatar({Key? key}) : super(key: key);

  @override
  _ListAvatarState createState() => _ListAvatarState();
}

class _ListAvatarState extends State<ListAvatar> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 84.0,
      ),
      child: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    DataConvert dataConvert = Provider.of<DataConvert>(context);
    dataConvert.createListUsersAfterLogin();
    return ListView.builder(
      itemCount: dataConvert.listUsersAfterLogin.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return _buildRow(dataConvert.listUsersAfterLogin[i]);
      },
    );
  }

  Widget _buildRow(User data) {
    return SizedBox(
      width: 70.0,
      height: 60.0,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: colorPopupWidget,
                  image: DecorationImage(
                    image: NetworkImage(data.picture.toString()),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: IconButton(
                  icon: CircleAvatar(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                top: 35,
                left: 35,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50,
            child: Text(data.name.toString(),
                textAlign: TextAlign.center, style: textSize14),
          )
        ],
      ),
    );
  }
}

class ListPosts extends StatefulWidget {
  const ListPosts({Key? key}) : super(key: key);

  @override
  _ListPostsState createState() => _ListPostsState();
}

class _ListPostsState extends State<ListPosts> {
  @override
  Widget build(BuildContext context) {
    DataConvert dataConvert = Provider.of<DataConvert>(context);
    int length = dataConvert.listPosts.length;
    User user = dataConvert.currentUser;
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: dataConvert.listPosts.length + 1,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: Stack(
                      children: [
                        Image(
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/animate-bg.png'),
                        ),
                        Opacity(
                          opacity: 0.9,
                          child: Container(
                            color: Color(0xffff2f64),
                          ),
                        ),
                        Container(
                          height: 100,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 20),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Newsfeed",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20),
                                  alignment: Alignment.centerRight,
                                  child: Text.rich(
                                    TextSpan(
                                      // Note: Styles for TextSpans must be explicitly defined.
                                      // Child text spans will inherit styles from parent
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      children: const [
                                        TextSpan(
                                            text: "Home",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(text: " / Newsfeed"),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.yellow, width: 3)),
                        color: Color(0xfff5f4f9)),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Good Afternoon, Geogre Floyd",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xff4d4d59)),
                              ),
                              Text(
                                "May this afternoon belight, blesses, productive and happy for you",
                                style: TextStyle(color: Color(0xff9f92B5)),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image(
                              image: AssetImage('assets/images/good-noon.png')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Color(0xffff2f64),
                          child: Text(" ", style: TextStyle(fontSize: 22)),
                        ),
                        Container(
                          width: 5,
                        ),
                        Text("Stories",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Expanded(
                          child: Container(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListAvatar(),
                ],
              );
            }
            int index = i - 1;
            return _buildRow(
                dataConvert.listPosts[length - 1 - index], user, dataConvert);
          },
        ))
      ],
    );
  }

  Widget _buildRow(Post data, User user, DataConvert dataConvert) {
    //bool colorIcon = dataConvert.isUserLikeThePost(data, user);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.0,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        NetworkImage(data.user!.picture.toString()),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.user!.name.toString(), style: textSize20),
                      Text(
                        data.user!.nickname.toString(),
                        style: const TextStyle(
                            fontSize: 15, color: Color(0xff92929E)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(LineIcons.list),
                  ),
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              data.content.toString(),
              style: const TextStyle(fontSize: 20, color: Color(0xff92A0C7)),
            ),
          ),
          Center(
            child: Image.network(
              data.image.toString(),
              errorBuilder: (context, error, stacktrace) {
                if (data.image.toString() == "") {
                  return Container();
                }
                return Image.file(
                  File(data.image.toString()),
                  errorBuilder: (context, error, stacktrace) {
                    return Container();
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 3, bottom: 2),
            child: FDottedLine(
              color: Color(0xffe2e2e2),
              width: MediaQuery.of(context).size.width,
              strokeWidth: 2.0,
              dottedLength: 5.0,
              space: 2.0,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      child: Image(
                        width: 30,
                        image: AssetImage('assets/images/thumb.png'),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      child: Image(
                        width: 30,
                        image: AssetImage('assets/images/heart.png'),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      child: Image(
                        width: 30,
                        image: AssetImage('assets/images/smile.png'),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: Image(
                        width: 30,
                        image: AssetImage('assets/images/weep.png'),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 95,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "10",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  Icon(LineIcons.commentDots),
                  Text(
                    "24 Comments",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: const [
                  Icon(LineIcons.shareSquare),
                  Text(
                    "56 Shares",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const SizedBox(
                //   width: 15,
                // ),
                // IconButton(
                //   icon: colorIcon
                //       ? Icon(
                //     Icons.favorite,
                //     color: Colors.red,
                //   )
                //       : Icon(
                //     Icons.favorite,
                //     color: Color(0xff4a0072),
                //   ),
                //   onPressed: () {
                //     setState(() {
                //       colorIcon = dataConvert.onLikeButtonPress(
                //           data, user, dataConvert.listPosts);
                //     });
                //   },
                // ),
                // Text(data.numberLikes.toString(), style: textSize18Bold),
                RaisedButton(
                  onPressed: () => {},
                  // padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(LineIcons.heart)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Like",
                          ))
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                // IconButton(
                //   icon: Icon(
                //     Icons.chat_bubble_outlined,
                //     color: Color(0xff4a0072),
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       PageTransition(
                //         type: PageTransitionType.bottomToTop,
                //         child: SafeArea(
                //           child: Container(
                //             padding: EdgeInsets.all(20),
                //             decoration: const ShapeDecoration(
                //                 color: Colors.white,
                //                 shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.only(
                //                       topLeft: Radius.circular(55),
                //                       topRight: Radius.circular(55)),
                //                 ),
                //                 shadows: [
                //                   BoxShadow(
                //                     color: Colors.black12,
                //                     spreadRadius: 5.0,
                //                     blurRadius: 5,
                //                   ),
                //                 ]),
                //             child: ChangeNotifierProvider.value(
                //               value: dataConvert,
                //               child: CommentPage(
                //                 idPost: data.id,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     );
                //   },
                // ),
                RaisedButton(
                  onPressed: () => {},
                  // padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(LineIcons.commentDots)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Comments",
                          ))
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                //Text(data.numberComments.toString(), style: textSize18Bold),
                RaisedButton(
                  onPressed: () => {},
                  // padding: const EdgeInsets.all(0.0),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(LineIcons.commentDots)),
                      Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Share",
                          ))
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(top: 3, bottom: 2),
            child: FDottedLine(
              color: Color(0xffe2e2e2),
              width: MediaQuery.of(context).size.width,
              strokeWidth: 2.0,
              dottedLength: 5.0,
              space: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
