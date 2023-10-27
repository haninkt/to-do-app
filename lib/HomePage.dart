// ignore_for_file: sort_child_properties_last

import 'package:design/ListView.dart';
import 'package:design/profile.dart';
import 'package:design/showmodalbottomsheet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
  }
  // Load the saved list when the app starts

  @override
  Widget build(BuildContext context) {  
    double _calculateAvailableHeight(BuildContext context) {
      final mediaQuery = MediaQuery.of(context);
      return mediaQuery.size.height - mediaQuery.padding.top;
    }

    return Container(
      // _____________________________________Container created for creating back ground gradient Color.
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromARGB(255, 40, 32, 151),
            Color.fromARGB(255, 255, 0, 217)
          ])),
      child: Scaffold(
        // ______________________________Scaffold color is taked as transparent to continueing with the gradient Color,_______________________________
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 50, 0, 0),
                        height: 80,
                        width: 200,
                        color: const Color.fromARGB(0, 255, 255, 255),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: const Text(
                                    'Hello!',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(18, 0, 0, 0),
                                  child: const Text(
                                    'hanin',
                                    style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          // ______________________This Container Containing the Profile image of 'John Doe',
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 85,
                                top: 17,
                              ),
                              height: 57,
                              width: 57,
                              // color: Colors.white,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/user pic.jpg",
                                      ),
                                      fit: BoxFit.fill)),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 330,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            hintText: "Search medical..",
                            prefixIcon: const Icon(Icons.search,
                                color: Color.fromARGB(216, 139, 137, 137)),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.tune,
                                    color: Color.fromARGB(216, 139, 137, 137))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                        child: const Text('Category',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  // Single child scroll view is used for to scroll the categories,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // Gestor detector used for clickable the container ,and this container have the-
                        // Column Row And container inside of the container have rus Icon , Design Text, Add Icon etc...
                        GestureDetector(
                          onTap: () {
                            ShowDialogue(context);
                            setState(() {});
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 31,
                                      width: 31,
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 15, 0, 0),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/fa_paint-brush.png'))),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 10, 0, 0),
                                      child: const Text(
                                        'Design',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: const Text(
                                        '5 Task',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            15, 0, 0, 0),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        ))
                                  ],
                                )
                              ],
                            ),
                            // Container have  color alignment decorations,
                            margin: const EdgeInsets.fromLTRB(35, 25, 0, 0),
                            height: 138,
                            width: 119,
                            decoration: const BoxDecoration(
                              // color: Colors.white,
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 224, 35, 98),
                                    Color.fromARGB(255, 230, 146, 166),
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ),
                        // ________________________this getsure detector second container containing parts group discussion icon meeting text etc...,
                        GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 15, 0, 0),
                                      height: 32,
                                      width: 32,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/healthicons_group-discussion-meeting.png'))),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 10, 0, 0),
                                      child: const Text(
                                        'Meeting',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: const Text(
                                        '1 Task',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            15, 0, 0, 0),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        ))
                                  ],
                                )
                              ],
                            ),
                            margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                            height: 138,
                            width: 119,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 200, 142, 54),
                                      Color.fromARGB(255, 233, 198, 123),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            ShowDialogue(context);
                            setState(() {});
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 15, 0, 0),
                                      height: 31,
                                      width: 31,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/carbon_machine-learning-model.png'))),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 10, 0, 0),
                                      child: const Text(
                                        'Learning',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 10, 0, 0),
                                      child: const Text(
                                        '2 Task',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            15, 0, 0, 0),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        ))
                                  ],
                                )
                              ],
                            ),
                            margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                            height: 138,
                            width: 119,
                            decoration: const BoxDecoration(
                                // color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 96, 198, 100),
                                      Color.fromARGB(255, 102, 224, 106)
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                          ),
                        )
                      ],
                    ),
                  ),
                  // _________________________________bottom container___________________________________________________
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            ShowModalBottomSheet(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 25),
                            height: _calculateAvailableHeight(context) *
                                0.8, // 80% of the available height
                            width: 395,
                            // color: Colors.white,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(52),
                                    topRight: Radius.circular(52))),

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          height: 5,
                                          width: 80,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 79, 74, 74),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(3))),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 20, 0, 0),
                                      child: const Text("Today's Task",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'R.font.segoe ui')),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 290,
                                  child: MyWidget(),
                                )
                              ],
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
        floatingActionButton: SizedBox(
          height: 45,
          width: 45,
          child: FloatingActionButton(
              backgroundColor: const Color.fromRGBO(138, 50, 203, 1),
              onPressed: () {
                ShowDialogue(context);
                setState(() {});
              },
              child: const Icon(
                Icons.add,
                size: 30,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
    );
  }
}
