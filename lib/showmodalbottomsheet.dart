// ignore_for_file: non_constant_identifier_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Future<dynamic> ShowModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      // Set this to true for a larger bottom sheet
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52), topRight: Radius.circular(52))),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height *
              0.90, // 3/4 of the screen height
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 5,
                        width: 80,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 79, 74, 74),
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 90,
                    width: 327,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(
                            63,
                            78,
                            153,
                            0.98,
                          ),
                          Color.fromRGBO(135, 77, 188, 0.77),
                          Color.fromRGBO(209, 76, 223, 0.86)
                        ])),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 22, top: 15),
                              child: const Text('You are on Track',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 25, top: 4),
                              child: const Icon(
                                Icons.check_circle_outline,
                                color: Colors.white,
                                size: 17,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 0, top: 4),
                                child: const Text(
                                  '50% Progress have made',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: 50,
                    width: 340,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Color.fromRGBO(43, 210, 171, 0.75),
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/fa_paint-brush.png',
                                  ))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                                  child: const Text('Design',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                  height: 13,
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 5, 0, 0),
                                  child: const Text('75% Completed',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400)),
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 120)),
                        CircularPercentIndicator(
                          radius: 15.0,
                          lineWidth: 2.0,
                          percent: .75,
                          progressColor: const Color(0xFF60DEC0),
                          backgroundColor: Colors.transparent,
                        )
                        // Container(
                        //   margin: const EdgeInsets.only(left: 150),
                        //   width: 21,
                        //   height: 21,
                        //   decoration: ShapeDecoration(
                        //     color: Colors.white,
                        //     shape: OvalBorder(
                        //       side: BorderSide(
                        //         width: 2,
                        //         strokeAlign: BorderSide.strokeAlignOutside,
                        //         color: Color(0xFF60DEC0),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 50,
                    width: 340,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Color.fromRGBO(118, 118, 209, 0.84),
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/healthicons_group-discussion-meeting.png',
                                  ))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: const Text('Meeting',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                  height: 13,
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 5, 0, 5),
                                  child: const Text('80% Completed',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400)),
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 120)),
                        CircularPercentIndicator(
                          radius: 15.0,
                          lineWidth: 2.0,
                          percent: .80,
                          progressColor: const Color(0xFF8C8CD8),
                          backgroundColor: Colors.transparent,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    height: 60,
                    width: 341,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Color.fromRGBO(253, 102, 23, 0.79),
                                      image: DecorationImage(
                                          image: AssetImage(
                                        'assets/carbon_machine-learning-model.png',
                                      ))),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 20,
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: const Text('Learning',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Container(
                                      height: 13,
                                      margin: const EdgeInsets.fromLTRB(
                                          20, 5, 10, 0),
                                      child: const Text('35% Completed',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400)),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(left: 113)),
                            CircularPercentIndicator(
                              radius: 15.0,
                              lineWidth: 2.0,
                              percent: .35,
                              progressColor: const Color(0xFFFC8648),
                              backgroundColor: Colors.transparent,
                            )
                            // Container(
                            //   margin:
                            //       const EdgeInsets.only(left: 140, bottom: 0),
                            //   width: 21,
                            //   height: 21,
                            //   decoration: ShapeDecoration(
                            //     color: Colors.white,
                            //     shape: OvalBorder(
                            //       side: BorderSide(
                            //         width: 2,
                            //         strokeAlign: BorderSide.strokeAlignOutside,
                            //         color: Color(0xFFFC8648),
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 1.2,
                  color: const Color.fromRGBO(239, 239, 239, 0.81),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 11.5),
                              height: 90,
                              width: 58,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('19',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600))),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('Mon',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 158, 158, 158),
                                              fontWeight: FontWeight.w600)))
                                ],
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: 90,
                              width: 58,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('20',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600))),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('Tue',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 158, 158, 158),
                                              fontWeight: FontWeight.w600)))
                                ],
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 20, top: 10),
                              height: 92,
                              width: 58,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color.fromRGBO(6, 1, 67, 0.72)),
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('21',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w600))),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('Wed',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w600))),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    height: 10,
                                    width: 10,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: Colors.white),
                                  )
                                ],
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 20),
                              height: 90,
                              width: 58,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('22',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600))),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 12, right: 2),
                                      child: const Text('Thu',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 158, 158, 158),
                                              fontWeight: FontWeight.w600)))
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 225,
                        width: double.infinity,
                        child: LineChart(
                          LineChartData(
                            gridData: const FlGridData(show: false),
                            titlesData: const FlTitlesData(show: false),
                            borderData: FlBorderData(
                              show: true,
                              border: Border.all(
                                color: Colors.transparent,
                                width: 1,
                              ),
                            ),
                            minX: 0,
                            maxX: 5,
                            minY: 0,
                            maxY: 5,
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, -0.0),
                                  const FlSpot(1, 2.5),
                                  const FlSpot(2, 2),
                                  const FlSpot(3, 1.5),
                                  const FlSpot(4, 2.5),
                                  const FlSpot(5, 5),
                                ],
                                isCurved: true,
                                barWidth: 5,
                                color: const Color.fromRGBO(252, 134, 72, 1),
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(show: false),
                              ),
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, 3),
                                  const FlSpot(1, 1.5),
                                  const FlSpot(2, 2),
                                  const FlSpot(4, 5.5),
                                  const FlSpot(5, 3),
                                  const FlSpot(5.8, 4),
                                ],
                                isCurved: true,
                                barWidth: 5,
                                color: const Color.fromRGBO(96, 222, 192, 1),
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(show: false),
                              ),
                              LineChartBarData(
                                spots: [
                                  const FlSpot(0, 4),
                                  const FlSpot(1, 2.5),
                                  const FlSpot(2, 1.8),
                                  const FlSpot(3, 3),
                                  const FlSpot(4, 4.5),
                                  const FlSpot(5, 4),
                                ],
                                isCurved: true,
                                barWidth: 5,
                                color: const Color.fromRGBO(140, 140, 216, 1),
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(show: false),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        );
      });
}
