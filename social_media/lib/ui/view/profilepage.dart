import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media/core/converter/data_converter.dart';
import 'package:social_media/ui/constant/app_colors.dart';
import 'package:social_media/ui/constant/text_styles.dart';
import 'package:social_media/ui/view/login_register_page.dart';

import '../../core/converter/profile_data_converter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ProfileDataConverter>.value(
      value: ProfileDataConverter(),
      child: InfoProfile(),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: Provider.of<ProfileDataConverter>(context).initData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null) {
            return Container();
          } else if (snapshot.hasData) {
            return buildProfilePage(context);
          }
        }
        return Container();
      },
    );
  }

  Widget buildProfilePage(BuildContext context) {
    ProfileDataConverter profileDataConvert =
        Provider.of<ProfileDataConverter>(context);
    DataConvert dataConvert = Provider.of<DataConvert>(context);
    return Stack(
      children: [
        Positioned(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            profileDataConvert.profileDataConverter.user!.cover.toString(),
            errorBuilder: (context, error, stacktrace) {
              return Container();
            },
          ),
        )),
        Positioned(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white70,
                child: IconButton(
                  icon: Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white70,
                child: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                content: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      right: -40.0,
                                      top: -40.0,
                                      child: InkResponse(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(),
                                      ),
                                    ),
                                    Form(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Center(
                                            child: Text("Options",
                                                style: textSize20),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            colorPopupWidget,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                      ),
                                                      child: SizedBox(
                                                        width: 65,
                                                        height: 80,
                                                        child: Ink(
                                                          decoration:
                                                              const ShapeDecoration(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          20)),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              IconButton(
                                                                color: Colors
                                                                    .white,
                                                                icon: const Icon(
                                                                    Icons
                                                                        .app_settings_alt_rounded),
                                                                onPressed:
                                                                    () {},
                                                              ),
                                                              const Text(
                                                                  "Settings",
                                                                  style:
                                                                      textSize15White),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            colorPopupWidget,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 2),
                                                      ),
                                                      child: SizedBox(
                                                        width: 65,
                                                        height: 80,
                                                        child: Ink(
                                                          decoration:
                                                              const ShapeDecoration(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          20)),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              IconButton(
                                                                color: Colors
                                                                    .white,
                                                                icon: const Icon(
                                                                    Icons
                                                                        .logout),
                                                                onPressed:
                                                                    () async {
                                                                  //close popup
                                                                  Navigator.pop(
                                                                      context);
                                                                  //remove id to delete session
                                                                  await profileDataConvert
                                                                      .deleteIdUser();
                                                                  //close to logout
                                                                  //Navigator.pushandpoputil(context);
                                                                  Navigator.pushAndRemoveUntil(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (BuildContext context) => SafeArea(
                                                                              child:
                                                                                  LoginPage())),
                                                                      (route) =>
                                                                          false);
                                                                },
                                                              ),
                                                              const Text(
                                                                  "Logout",
                                                                  style:
                                                                      textSize15White),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                            ],
                          );
                        });
                  },
                ),
              ),
            ],
          ),
        )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: NetworkImage(profileDataConvert
                              .profileDataConverter.user!.picture
                              .toString()),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                          width: 3.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 90.0,
                        color: Colors.white,
                        padding: const EdgeInsets.all(10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 60,
                                width: 80,
                                decoration: statisticWidget(),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      textNumber(
                                          dataConvert.statisticPostNumber()),
                                      Text("Posts"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 60,
                                width: 80,
                                decoration: statisticWidget(),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      textNumber(profileDataConvert
                                          .profileDataConverter.follower),
                                      Text("Followers"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 60,
                                width: 80,
                                decoration: statisticWidget(),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      textNumber(profileDataConvert
                                          .profileDataConverter.following),
                                      Text("Following"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 60,
                                decoration: const ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: -5.0,
                                        blurRadius: 20,
                                      ),
                                    ]),
                                child: IconButton(
                                  icon:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileDataConvert.profileDataConverter.user!.name
                          .toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      profileDataConvert.profileDataConverter.user!.nickname
                          .toString(),
                      style: const TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.42,
                  color: Colors.white,
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(
                      profileDataConvert.profileDataConverter.listImage!.length,
                      (index) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          child: Container(
                            color: Colors.black,
                            child: Center(
                              child: Image.network(
                                profileDataConvert
                                    .profileDataConverter.listImage![index]
                                    .toString(),
                                errorBuilder: (context, error, stacktrace) {
                                  return Icon(Icons
                                      .signal_wifi_connected_no_internet_4_rounded);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ShapeDecoration statisticWidget() {
    return const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        shadows: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5.0,
            blurRadius: 20,
          ),
        ]);
  }

  Widget textNumber(int? number) {
    try {
      if (number! > 1000) {
        return Text((number / 1000).toString() + "k",
            style: TextStyle(fontWeight: FontWeight.bold));
      }
    } catch (e) {
      return Text("0", style: TextStyle(fontWeight: FontWeight.bold));
    }
    return Text(number.toString(),
        style: TextStyle(fontWeight: FontWeight.bold));
  }
}
