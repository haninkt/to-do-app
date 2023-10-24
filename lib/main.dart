import 'dart:async';
import 'package:design/HomePage.dart';
import 'package:design/login_page.dart';
import 'package:design/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => providerd(),),
        ChangeNotifierProvider(create: (context) => ColorProvider(),),
      ],
      child: MaterialApp(
        title: 'To do',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  LoginPageState login = LoginPageState();
  @override
  void initState() {
    super.initState();
    loadLogin();
    Timer(Duration(seconds: 3), () {
      if (usernamelist.isEmpty && passcodelist.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<providerd>(context);

    return Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Image.asset('assets/To-Do-App-Logo.png'));
  }
}
