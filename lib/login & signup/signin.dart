// ignore_for_file: sort_child_properties_last

import 'package:design/login%20&%20signup/login_page.dart';
import 'package:design/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  List<String> username = [];
  List<String> password = [];
  List<String> emailid = [];
  List<String> confirmpass = [];

  final TextEditingController signinuser = TextEditingController();
  final passcode = TextEditingController();
  final TextEditingController email = TextEditingController();
  final cnfrmpasscode = TextEditingController();

  bool eyehide = true;
  @override
  Widget build(BuildContext context) {
    Provider.of<providerd>(context).SaveData();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bagroundclr.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 80,
                        width: 250,
                        child: Image.asset('assets/To-Do-App-Logo.png')),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: email,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "email",
                                labelStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0x99E0E0E0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        const SizedBox(height: 20.0),
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: signinuser,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "username",
                                labelStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0x99E0E0E0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        const SizedBox(height: 20.0),
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: passcode,
                              obscureText: eyehide,
                              style: const TextStyle(color: Colors.white),
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
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    eyehide
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0x99E0E0E0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      eyehide = !eyehide;
                                    });
                                  },
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        const SizedBox(height: 20.0),
                        SizedBox(
                            width: 270.0,
                            height: 50.0,
                            child: TextField(
                              controller: cnfrmpasscode,
                              obscureText: eyehide,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: " Confirm Password",
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
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    )),
                                
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Color(0x99E0E0E0),
                                ),
                              ),
                            )),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 270,
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color(0x99E0E0E0),
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'sign in',
                              style: TextStyle(
                                  color: Color.fromARGB(197, 253, 252, 252)),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Text('I have account',
                                style: TextStyle(color: Color(0x99E0E0E0))),
                            TextButton(
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue),
                                ),
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                      (Route<dynamic> route) => false);
                                },
                                style: const ButtonStyle(
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
