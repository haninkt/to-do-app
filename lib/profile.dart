// ignore_for_file: prefer_const_constructors

import 'package:design/login_page.dart';
import 'package:design/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  LoginPageState login = LoginPageState();
  void initState() {
    super.initState();
    loadLogin();
  }

  void removeLogin() async {
    setState(() {
      usernamelist.removeAt(0);
      passcodelist.removeAt(0);
      Provider.of<providerd>(context).SaveData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Profile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/user pic.jpg"),
                        )),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/editprofile');
                      },
                      child: Container(
                          padding: EdgeInsets.all(1.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          )),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 100,
              //   width: 100,
              //   child: CircleAvatar(
              //       radius: 50,
              //       backgroundImage: AssetImage("assets/user pic.jpg"),
              //       child: SizedBox()),
              // ),
              SizedBox(
                height: 10,
              ),
              Text(usernamelist.first,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoMono',
                      color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Icon(Icons.privacy_tip),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                            child: Text(
                          'privacy',
                          style: TextStyle(fontSize: 20),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Icon(Icons.help_center),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                            child: Text(
                          'help & support',
                          style: TextStyle(fontSize: 20),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 300,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Icon(Icons.settings),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              child: Text(
                            'settings',
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    exitapp();
                  },
                  child: Container(
                      width: 300,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Icon(Icons.logout),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Container(
                              child: Text(
                            'Logout',
                            style: TextStyle(fontSize: 20),
                          )),
                        ],
                      )),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> exitapp() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Do you want to exit this application?'),
          content: const SingleChildScrollView(),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('logout'),
              onPressed: () {
                removeLogin();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    (Route<dynamic> route) => false);

                username.clear();
                password.clear();
              },
            ),
          ],
        );
      },
    );
  }
}
