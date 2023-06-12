import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/random_page/slidable_widget.dart';

import 'bulleted_item.dart';
import 'action_button.dart';
import 'bordered_button.dart';
import 'first_painter.dart';
import 'graph_painter.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      child: Text(
                        'James',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello James,',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "your credit score for Jan'23",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: const [
                        Icon(
                          Icons.notifications,
                          color: Colors.black,
                        ),
                        Positioned(
                          right: 3,
                          child: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 8,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SlideableWidget(
                  widgetHeight: 200,
                  widgetList: [
                    Stack(
                      children: [
                        const Center(
                          child: SizedBox(
                            width: 160,
                            height: 80,
                            child: CreditScoreDisplayer(),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Credit Score',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              Text(
                                '810',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                              Text(
                                '   +160',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width = constraints.maxWidth;
                      final double height = constraints.maxHeight;
                      log(width.toString());
                      log(height.toString());
                      return Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          Stack(
                            children: [
                              const Center(
                                child: SizedBox(
                                  width: 250,
                                  height: 125,
                                  child: GraphWidget(),
                                ),
                              ),
                              Positioned(
                                left: width * 0.35,
                                top: height * 0.05,
                                child: ActionButton(
                                    title: '700',
                                    radius: 2,
                                    width: 40,
                                    height: 15,
                                    fontSize: 10,
                                    titleColor: Colors.white,
                                    onTap: () {}),
                              ),
                              Positioned(
                                left: width * 0.54,
                                top: height * 0.0001,
                                child: ActionButton(
                                    title: '720',
                                    radius: 2,
                                    width: 40,
                                    height: 15,
                                    fontSize: 10,
                                    titleColor: Colors.white,
                                    onTap: () {}),
                              ),
                            ],
                          ),
                        ],
                      );
                    })
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BordredButton(
                        title: 'Credit History',
                        radius: 7,
                        height: 26,
                        textSize: 10,
                        onTap: () {},
                      ),
                      const SizedBox(width: 10),
                      BordredButton(
                        title: 'Download Report',
                        radius: 7,
                        height: 26,
                        textSize: 10,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 159, 219, 227),
                    border: Border.all(
                      color: Colors.green,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Axis Bank',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 8, 41, 9),
                                  ),
                                ),
                                const Text(
                                  'Flipkart Credit Card',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 8, 41, 9),
                                  ),
                                ),
                                const BulletedTextItem(
                                  text: '1.5% cashback on all spends',
                                ),
                                const BulletedTextItem(
                                  text: '4 complimentry lounge access',
                                ),
                                const SizedBox(height: 12),
                                ActionButton(
                                    title: 'Apply Now',
                                    radius: 6,
                                    width: 100,
                                    height: 28,
                                    fontSize: 12,
                                    titleColor: Colors.white,
                                    onTap: () {})
                              ]),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(children: const [
                            Text(
                              'Image will',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Be here',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class CreditScoreDisplayer extends StatelessWidget {
  const CreditScoreDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(),
      size: const Size(300, 150),
    );
  }
}

class GraphWidget extends StatelessWidget {
  const GraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GraphPainter(0),
      size: const Size(300, 150),
    );
  }
}
