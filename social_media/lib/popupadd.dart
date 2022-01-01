import 'package:flutter/material.dart';

PopupAdd(context){
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
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
                      child: Text(
                      "Upload",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff9796F0),
                                        Color(0xffFBC7D4),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 2
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 80,
                                    height: 95,
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                      ),
                                      child:Column(
                                        children: [
                                          IconButton(
                                            color: Colors.white,
                                            icon: const Icon(Icons.image_outlined),
                                            onPressed: () {
                                            },
                                          ),
                                          const Text(
                                            "Photo",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding:const EdgeInsets.all(5),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff9796F0),
                                        Color(0xffFBC7D4),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 2
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 80,
                                    height: 95,
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                      ),
                                      child:Column(
                                        children: [
                                          IconButton(
                                            color: Colors.white,
                                            icon: const Icon(Icons.sms_outlined),
                                            onPressed: () {
                                            },
                                          ),
                                          const Text(
                                            "Status",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff9796F0),
                                        Color(0xffFBC7D4),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 2
                                    ),
                                  ),
                                  child: SizedBox(
                                    width: 80,
                                    height: 95,
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        ),
                                      ),
                                      child:Column(
                                        children: [
                                          IconButton(
                                            color: Colors.white,
                                            icon: const Icon(Icons.slideshow),
                                            onPressed: () {
                                            },
                                          ),
                                          const Text(
                                            "Video",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height:50,),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
