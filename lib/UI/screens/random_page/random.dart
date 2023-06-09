import 'package:flutter/material.dart';
import 'package:whatsapp/UI/screens/random_page/slidable.dart';

import 'bulleted_item.dart';
import 'button.dart';
import 'buttons.dart';
import 'first_painter.dart';

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
                const SizedBox(height: 50),
                SlideableWidget(
                  widgetHeight: 200,
                  widgetList: [
                    Stack(
                      children: [
                        const Center(
                          child: SizedBox(
                            width: 160,
                            height: 80,
                            child: HalfCircleWidget(),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Credit Score',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10)),
                              Text('810',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 24)),
                              Text('   +160',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '720',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 200,
                            height: 100,
                            child: HalfCircleWidget1(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
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
                        buttonAction: () {},
                      ),
                      const SizedBox(width: 10),
                      BordredButton(
                        title: 'Download Report',
                        radius: 7,
                        height: 26,
                        textSize: 10,
                        buttonAction: () {},
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
                                FilledButton1(
                                    title: 'Apply Now',
                                    radius: 6,
                                    width: 100,
                                    height: 28,
                                    fontSize: 12,
                                    titleColor: Colors.white,
                                    buttonAction: () {})
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

class SecondLinePainter extends CustomPainter {
  final int value;
  SecondLinePainter(this.value);
  @override
  void paint(Canvas canvas, Size size) {
    // draw triangle
    final tri = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;
    final linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 7.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final linePaint1 = Paint()
      ..color = Colors.orange
      ..strokeWidth = 7.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    var linePath = Path();
    linePath.moveTo(size.width * 0, size.height * 0.3);
    linePath.lineTo(size.width * 0.28, size.height * 0.3);

    // Draw the black triangle
    var trianglePath = Path();
    trianglePath.moveTo(size.width * 0, 0);
    trianglePath.lineTo(size.width * 0.07, 0);
    trianglePath.moveTo(size.width * 0.14, 0);
    trianglePath.lineTo(size.width * 0.21, 0);
    trianglePath.moveTo(size.width * 0.28, 0);
    trianglePath.lineTo(size.width * 0.35, 0);
    trianglePath.moveTo(size.width * 0.42, 0);
    trianglePath.lineTo(size.width * 0.49, 0);
    trianglePath.moveTo(size.width * 0.56, 0);
    trianglePath.lineTo(size.width * 0.63, 0);
    trianglePath.moveTo(size.width * 0.70, 0);
    trianglePath.lineTo(size.width * 0.77, 0);
    trianglePath.moveTo(size.width * 0.84, 0);
    trianglePath.lineTo(size.width * 0.91, 0);
    //
    trianglePath.moveTo(size.width * 0, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.07, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.14, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.21, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.28, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.35, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.42, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.49, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.56, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.63, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.70, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.77, size.height * 0.3);
    trianglePath.moveTo(size.width * 0.84, size.height * 0.3);
    trianglePath.lineTo(size.width * 0.91, size.height * 0.3);
    //
    trianglePath.moveTo(size.width * 0, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.07, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.14, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.21, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.28, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.35, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.42, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.49, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.56, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.63, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.70, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.77, size.height * 0.6);
    trianglePath.moveTo(size.width * 0.84, size.height * 0.6);
    trianglePath.lineTo(size.width * 0.91, size.height * 0.6);

    final path = Path();
    path.moveTo(
        size.width * 0, size.height * 0.3); // Start at the left-middle point
    var linePath1 = Path();
    linePath1.moveTo(size.width * 0.28, size.height * 0.3);
    if (value > 0) {
      linePath1.lineTo(size.width * 0.63, size.height * 0.2);
    } else if (value < 0) {
      linePath1.lineTo(size.width * 0.63, size.height * 0.4);
    } else {
      linePath1.lineTo(size.width * 0.63, size.height * 0.3);
    }
    final center = Offset(size.width * 0.28, size.height * 0.3);
    final Offset center1;
    if (value > 0) {
      center1 = Offset(size.width * 0.63, size.height * 0.2);
    } else if (value < 0) {
      center1 = Offset(size.width * 0.63, size.height * 0.4);
    } else {
      center1 = Offset(size.width * 0.63, size.height * 0.3);
    }

    final radius = size.width / 20;
    // Draw the white circle
    final whitePainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.blue;
    final orangePainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.orange;

    canvas.drawPath(trianglePath, tri);
    canvas.drawPath(linePath, linePaint);
    canvas.drawPath(linePath1, linePaint1);
    canvas.drawCircle(center, radius, whitePainter);
    canvas.drawCircle(center1, radius, orangePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HalfCircleWidget extends StatelessWidget {
  const HalfCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCirclePainter(),
      size: const Size(150, 75),
    );
  }
}

class HalfCircleWidget1 extends StatelessWidget {
  const HalfCircleWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SecondLinePainter(0),
      size: const Size(150, 75),
    );
  }
}
