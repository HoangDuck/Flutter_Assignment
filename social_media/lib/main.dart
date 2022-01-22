
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/core/converter/login_data_converter.dart';
import 'package:social_media/ui/constant/button_styles.dart';
import 'package:social_media/ui/constant/text_styles.dart';
import 'package:social_media/ui/view/pageafterlogin.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media/ui/view/register/registerpage.dart';
import 'package:social_media/ui/widget/stateloginregistername.dart';
import 'package:social_media/ui/widget/textformfieldlogin.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter GSOT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
          child: LoginPage(),
      )
    );
  }
}
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  //tạo 1 provider để lấy thông tin đăng nhập để sẵn
  @override
  Widget build(BuildContext context){
    return FutureBuilder<int>(
      future: _getIdUser(),
      builder: (context,snapshot)
      {
        // khi có lỗi thì sẽ treo chữ GSOT
        if(snapshot.hasError){
          return Material(
            child: Container(color: Colors.white,
              child: Center(
                child: Text("GSOT", style: titleAppGsotLoginPage),
              ),
            ),
          );
        }
        //khi có dữ liệu là check trong pref có data user (bằng getIdUser) nếu -1
        // thì trang login ngược lại thì vô page của user
        if(snapshot.hasData){
          if(snapshot.data!=-1){
            return PageAfterLogin();
          }
          return Provider<LoginDataConverter>.value(
              value: LoginDataConverter(),
              child: Material(child: loginAndRegisterUI(context)),
          );
        }
        // mặc định là trạng thái không kết nối thì sẽ treo chữ GSOT
        return Material(
          child: Container(color: Colors.white,
            child: Center(
              child: Text("GSOT", style: titleAppGsotLoginPage),
            ),
          ),
        );
      },
    );
  }
  Widget loginAndRegisterUI(BuildContext context){
    return Column(
      children: [
        Expanded(child: Container(
          color: Colors.red,
        )),
        Container(
          padding: EdgeInsets.only(
              top:MediaQuery.of(context).size.width*0.2,
              bottom: MediaQuery.of(context).size.width*0.2,
          ),
          child: Center(
            child: Column(
              children: [
                Text("Or",
                  style: TextStyle(
                      fontSize: 38,
                      color: Color(0xff6d6a6d),
                      fontWeight: FontWeight.w300)
                  ,),
                Text("Login with",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff4b4a4a),
                      fontWeight: FontWeight.w300)
                  ,),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff1245bd),
                      child: IconButton(
                          color: Colors.white,
                          icon: Icon(LineIcons.facebookF),
                          onPressed: (){
                          }
                      ),
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      child: IconButton(
                          color: Colors.white,
                          icon: Icon(LineIcons.googleLogo),
                          onPressed: (){
                          }
                      ),
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                          color: Colors.white,
                          icon: Icon(LineIcons.twitter),
                          onPressed: (){
                          }
                      ),
                    ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
  Future<int>_getIdUser()async{
    // hàm để check ID user có lưu trong pref không
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int id=-1;
    id= prefs.getInt('id') ?? -1;
    return id;
  }
}
class LoginPageUI extends StatefulWidget {
  const LoginPageUI({Key? key}) : super(key: key);
  // login page là stateful vì còn thực hiện check lỗi login để báo lỗi đến người dùng
  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  String _stateLogin="";// để chứa thông tin về các trạng thái đăng nhập đúng sai
  late TextEditingController txtToDoControllerUsername;
  late TextEditingController txtToDoControllerPassword;
  void _stateLoginPasswordEmpty() {
    setState(() {
      _stateLogin="Username or password must not be empty";
    });
  }
  void _stateLoginPasswordWrongPassword() {
    setState(() {
      _stateLogin="Wrong password";
    });
  }
  void _stateLoginPasswordNotExist() {
    setState(() {
      _stateLogin="This account is not exist";
    });
  }

  @override
  void initState() {
    super.initState();
    //vừa hiện widget là khởi tạo controller để người dùng nhập vào
    txtToDoControllerUsername= TextEditingController();
    txtToDoControllerPassword= TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    LoginDataConverter loginDataConvert=Provider.of<LoginDataConverter>(context);
    loginDataConvert.initData();// lấy dữ liệu đăng nhập từ local storage
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100,bottom: 100,),
            child: Text("GSOT", style: titleAppGsotLoginPage),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
              child: textFormFieldLoginRegisterPage(txtToDoControllerUsername,"Username",false,Icons.account_circle),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
              child: textFormFieldLoginRegisterPage(txtToDoControllerPassword, "Password", true,Icons.lock),
          ),
          stateLoginRegisterName(context,_stateLogin),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
            child: ElevatedButton(
              style: buttonStyleLogin,
              onPressed: () {
                //check điều kiện người dùng bỏ trống 1 trong 2 username và password
                if(txtToDoControllerUsername.text == ""
                    || txtToDoControllerPassword.text == ""){
                  _stateLoginPasswordEmpty();//gọi hàm setstate trong hàm này và xuất ra message
                  return;
                }
                try{
                  //vì thiết bị có thể có nhìu hơn 1 tk đăng nhập nên chỗ này phải có for
                  for(int i=0;i<loginDataConvert.listUserLogins.length;i++){
                    var idUser=loginDataConvert.listUserLogins[i].user!.id;
                    var username=loginDataConvert.listUserLogins[i].username.toString();
                    var password=loginDataConvert.listUserLogins[i].password.toString();
                    if(username==txtToDoControllerUsername.text
                        && password==txtToDoControllerPassword.text){
                      //save session
                      loginDataConvert.setIdUser(idUser!);
                      //dang nhap thanh cong thi xoa canh bao
                      setState(() {
                        txtToDoControllerUsername.text="";
                        txtToDoControllerPassword.text="";
                        _stateLogin="";
                      });
                      //go to page after login
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: SafeArea(
                                  child: PageAfterLogin()
                              )
                          )
                      );
                      return;
                      //check ràng buộc người dùng sai mk
                    }else if(username==txtToDoControllerUsername.text){
                      _stateLoginPasswordWrongPassword();
                      return;
                    }
                  }
                  //không rời vào các trường hợp trên thì báo tk ko tồn tại
                  _stateLoginPasswordNotExist();
                }catch(e){
                  log(e.toString());
                }
              },
              child:Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.8,
            child: ElevatedButton(
              style: buttonStyleLogin,
              onPressed: () {
                onPressButtonRegister();
              },
              child:Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
  onPressButtonRegister(){
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.fade,
            child: SafeArea(
                child: RegisterProviderUI()
            )
        )
    );
  }
}