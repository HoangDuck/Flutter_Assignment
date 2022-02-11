import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:social_media/core/converter/data_converter.dart';
import 'package:social_media/ui/view/chat/chat.dart';
import 'package:social_media/ui/view/homepage/homepage.dart';
import 'package:social_media/ui/view/notifier/notificationpage.dart';
import 'package:social_media/ui/view/popupadd/popupadd.dart';
import 'package:social_media/ui/view/profilepage/profilepage.dart';

class PageAfterLogin extends StatelessWidget {
  const PageAfterLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataConvert>.value(
      value: DataConvert(),
      child: Pages(),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Provider.of<DataConvert>(context).initData(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          return buildHomePage(context);
        }
        return Container();
      },
    );
  }
  //UI Homepage
  Widget buildHomePage(BuildContext context){
    DataConvert dataConvert=Provider.of<DataConvert>(context);
    return ChangeNotifierProvider<DataConvert>.value(
      value: dataConvert,
      child: Scaffold(
        floatingActionButton: SizedBox(
          height: 75.0,
          width: 75.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Color(0xffff2C55),
              child: Icon(Icons.close),
              onPressed: () {
                setState(() {
                  popupAdd(context,dataConvert);
                });
              },
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                color: Color(0xffff2f64),
                height: 3.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          backgroundColor: Color(0xfff1f2f6),
          actions: [
            Expanded(child: IconButton(
                color: Color(0xff202020),
                icon: Icon(LineIcons.angleDoubleLeft),
                onPressed: () {}
                ),flex: 1,),
            Expanded(child: IconButton(
                color: Color(0xff202020),
                icon: Icon(LineIcons.search),
                onPressed: () {}
                ),flex: 1,),
            Expanded(child: FlatButton(
              onPressed: (){},
              child: Image(
                  image: AssetImage('assets/images/logo.png')
              ),
            ),flex: 3,),
            Expanded(child: FlatButton(
              onPressed: (){},
              child: Image(
                  image: AssetImage('assets/images/create-new.png')
              ),
            ),flex: 1,),
            Expanded(child: IconButton(
                color: Color(0xff202020),
                icon: Icon(LineIcons.list),
                onPressed: () {}
                ),flex: 1,),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffffe9ed),
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                iconButton(Icon(LineIcons.home,color: Color(0xffff2f64),),0),
                iconButton(Icon(LineIcons.bell,color: Color(0xffff2f64),),1),
                SizedBox(width: MediaQuery.of(context).size.width*0.2,),
                iconButton(Icon(LineIcons.commentDots,color: Color(0xffff2f64),),3),
                iconButton(Icon(LineIcons.user,color: Color(0xffff2f64),),4)
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _myPage,
          children: <Widget>[
            HomePage(),
            Container(
              padding: const EdgeInsets.all(10),
              child: NotificationPage(),
            ),
            Container(),//widget trống vì bottom appbar là popup widget
            Container(
              padding: const EdgeInsets.all(10),
              child: ChatPage(),
            ),
            ProfilePage()
          ],
          physics: const NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
        ),
      ),
    );
  }
  Widget iconButton(Icon icon,int indexPage){
    return IconButton(
      iconSize: 30.0,
      icon: icon,
      onPressed: () {
        setState(() {
          _myPage.jumpToPage(indexPage);
        });
      },
    );
  }
}