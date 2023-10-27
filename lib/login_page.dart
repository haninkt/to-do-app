// ignore_for_file: prefer_const_constructors, sort_child_properties_last
// import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:design/HomePage.dart';
import 'package:design/provider.dart';
import 'package:design/signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

List<String> usernamelist = [];
List<String> passcodelist = [];

final TextEditingController username = TextEditingController();
final password = TextEditingController();
String name = 'Hanin';
String pass = 'hanintdg';

class LoginPageState extends State<LoginPage> {
  void initState() {
    super.initState();
  }

  bool _obscureText = true;

  void login() {
    // Check if the username and password are correct
    if (username.text == name && password.text == pass) {
      Provider.of<providerd>(context, listen: false)
          .AddData(username.text, password.text);
      // Set the _isLoggedIn state to true
      setState(() {});

      // Navigate to the HomePage() page
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid username or password'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<providerd>(context).SaveData();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BGCLR.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bagroundclr.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 250,
                        child: Image.asset('assets/To-Do-App-Logo.png')),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: username,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "username",
                                labelStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0x99E0E0E0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    )),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        SizedBox(height: 30.0),
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: password,
                              obscureText: _obscureText,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey.shade300,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Color(0x99E0E0E0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(right: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: Text(
                                  "Forget Password ?",
                                  style: TextStyle(
                                      color: Color(0x99E0E0E0),
                                      fontFamily: "Dubai",
                                      fontSize: 14),
                                ),
                                onPressed: () {
                                  //Get.to(ForgetPassword());
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 0.0),
                        SizedBox(
                          width: 270,
                          // child: AnimatedButton(
                          //   onPress: login,
                          //   height: 70,
                          //   width: 200,
                          //   text: 'SUBMIT',
                          //   isReverse: true,
                          //   selectedTextColor: Colors.black,
                          //   transitionType:
                          //       TransitionType.BOTTOM_CENTER_ROUNDER,
                          //   backgroundColor: Colors.black,
                          //   borderColor: Colors.white,
                          //   borderWidth: 1,
                          // ),
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0x99E0E0E0),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            onPressed: login,
                            child: Text(
                              'login',
                              style: TextStyle(
                                  color: Color.fromARGB(197, 253, 252, 252)),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Text('Does not have account?',
                                style: TextStyle(color: Color(0x99E0E0E0))),
                            TextButton(
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                                  //signup screen
                                },
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                ))
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> loadLogin() async {
  final prefs = await SharedPreferences.getInstance();
  usernamelist = prefs.getStringList('username_value') ?? [];
  passcodelist = prefs.getStringList('passcode_value') ?? [];
  print(usernamelist);
  print(passcodelist);
}
