import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifood/Screen/HomePage.dart';





class Drawer1 extends StatelessWidget {
  final ImageURl = "lib/Image/new.jpeg";

  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                    ),
                    accountName: const Text("iju ijaj"),
                    accountEmail: const Text("ijuijaj1@gmail.com"),
                    // currentAccountPictureSize: Size.square(80),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage(ImageURl),
                    )),
              ),
              ListTile(
                  onTap: (){},
                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  )),
              ListTile(
                  leading: Icon(
                    CupertinoIcons.profile_circled,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile ",textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  )),
              ListTile(
                  onTap: (){
                  },
                  leading: Icon(
                    CupertinoIcons.mail_solid,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Mail me",textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  )),
              ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Homepage()
                    ));
                  },
                  leading: Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Back",textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ));
  }
}
