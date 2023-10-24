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
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromARGB(255, 40, 32, 151),
            Color.fromARGB(255, 255, 0, 217)
          ])),
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
              SizedBox(
                height: 200,
                width: 200,
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/user pic.jpg"),
                    child: SizedBox()),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Username: Hanin',
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono')),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    removeLogin();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false);
                    setState(() {
                      username.clear();
                      password.clear();
                    });
                  },
                  child: Text('Logout'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
