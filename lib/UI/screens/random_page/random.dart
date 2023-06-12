import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whatsapp/UI/screens/random_page/slidable_widget.dart';

import 'action_button.dart';
import 'bordered_button.dart';
import 'bulleted_item.dart';
import 'first_painter.dart';
import 'graph_painter.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    const borderRadius2 = BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),
    );
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
                        Center(
                          child: CustomPaint(
                            size: const Size(150, 75),
                            painter: HalfCirclePainter(),
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
                                '890',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24),
                              ),
                              Text(
                                '+160',
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
                              Center(
                                child: CustomPaint(
                                  painter: GraphPainter(1),
                                  size: const Size(300, 150),
                                ),
                              ),
                              Positioned(
                                left: width * 0.32,
                                top: height * 0.1,
                                child: ActionButton(
                                  title: '700',
                                  radius: 2,
                                  width: 40,
                                  height: 15,
                                  fontSize: 10,
                                  titleColor: Colors.white,
                                  onTap: () {},
                                ),
                              ),
                              Positioned(
                                left: width * 0.54,
                                //top
                                // top: height * 0.18,
                                // middle
                                // top: height * 0.1,
                                //down
                                top: height * 0.03,
                                child: ActionButton(
                                  title: '720',
                                  radius: 2,
                                  width: 40,
                                  height: 15,
                                  fontSize: 10,
                                  titleColor: Colors.white,
                                  onTap: () {},
                                ),
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
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xffebf9ff),
                        border: Border.all(
                          color: Colors.green,
                          width: 1.0,
                        ),
                        borderRadius: borderRadius2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          height: 150,
                          child: PageView.builder(
                            controller: _controller,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Axis Bank',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 8, 41, 9),
                                          ),
                                        ),
                                        const Text(
                                          'Flipkart Credit Card',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 8, 41, 9),
                                          ),
                                        ),
                                        const BulletedTextItem(
                                          text: '1.5% cashback on all spends',
                                        ),
                                        const BulletedTextItem(
                                          text:
                                              '4 complimentry lounge acce ask hlakjshak shkja kl ss',
                                        ),
                                        const SizedBox(height: 12),
                                        ActionButton(
                                          title: 'Apply Now',
                                          radius: 6,
                                          width: 100,
                                          height: 28,
                                          fontSize: 12,
                                          titleColor: Colors.white,
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 3,
                                    child: Text(
                                      'Image will be here',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          right: 15,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: SmoothPageIndicator(
                            onDotClicked: (index) {},
                            controller: _controller,
                            count: 3,
                            effect: const WormEffect(
                              activeDotColor: Colors.white,
                              dotColor: Colors.black,
                              dotHeight: 8,
                              type: WormType.thinUnderground,
                              dotWidth: 8,
                              spacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: borderRadius2,
                            border: Border.all(color: const Color(0xffebb7df)),
                            color: const Color(0xfffef9fd),
                          ),
                          // height: MediaQuery.of(context).size.height / 2.6,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Get Personal Loan",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff7f72f4),
                            ),
                            borderRadius: borderRadius2,
                            color: const Color(0xfff0f0fa),
                          ),
                          // height: MediaQuery.of(context).size.height / 3.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "Get Personal Loan",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
