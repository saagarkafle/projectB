import 'package:flutter/material.dart';

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
                Stack(
                  children: [
                    const Center(
                      child: SizedBox(
                        width: 200,
                        height: 100,
                        child: HalfCircleWidget(),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Credit Score',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10)),
                          Text('810',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24)),
                          Text('   +160',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                        ],
                      ),
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
                                FilledButton(
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

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // draw triangle
    final tri = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Draw gradient arc
    final arcPainter = Paint()
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..shader = const LinearGradient(
        colors: [
          Colors.orange,
          Colors.purple,
          Colors.green,
          Colors.blue,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 3, size.height / 2),
        radius: size.width / 2,
      ));
    // Draw blue white gradient
    final gradientPainter = Paint()
      ..style = PaintingStyle.fill
      ..shader = const LinearGradient(
        colors: [
          Colors.transparent,
          Color.fromARGB(255, 84, 166, 237),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 3, size.height / 2),
        radius: size.width / 2,
      ));

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;

    // Draw the outer black shadow
    final shadowPainter = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.outer, 10.0);

    // Draw the white circle
    final whitePainter = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    // Draw the black triangle
    var trianglePath = Path();
    trianglePath.moveTo(size.width / 2, size.height * 0.01);
    trianglePath.lineTo(size.width * 0.86, size.height / 5.44);
    trianglePath.lineTo(size.width / 1.4, size.height);
    trianglePath.close();

    final arcPath = Path()
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        2.8,
        3.04,
        false,
      );
    final gradientPath = Path()
      ..arcTo(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        -0.4,
        -3.14,
        false,
      );

    canvas.drawCircle(center, radius, shadowPainter);
    canvas.drawPath(gradientPath, gradientPainter);
    canvas.drawPath(arcPath, arcPainter);
    canvas.drawPath(trianglePath, tri);
    canvas.drawCircle(center, radius, whitePainter);
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

class FilledButton extends StatelessWidget {
  final String title;
  final double radius;
  final double height;
  final double? width;
  final double fontSize;
  final Color? buttonColor;
  final Color? titleColor;
  final Function() buttonAction;

  const FilledButton({
    Key? key,
    required this.title,
    required this.radius,
    required this.height,
    this.width,
    required this.fontSize,
    required this.buttonAction,
    this.buttonColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: buttonColor ?? Colors.green,
        ),
        height: height,
        width: width,
        child: Text(
          title,
          style: TextStyle(
              color: titleColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class BordredButton extends StatelessWidget {
  final String title;
  final double radius;
  final double height;
  final double? width;
  final double textSize;
  final Color? buttonColor;
  final Color? textColor;
  final Function() buttonAction;

  const BordredButton({
    Key? key,
    required this.title,
    required this.radius,
    required this.height,
    this.width,
    required this.textSize,
    required this.buttonAction,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        height: height,
        width: width,
        child: Row(
          children: [
            const Icon(
              Icons.lock_clock,
              color: Colors.black,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: textSize,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletedTextItem extends StatelessWidget {
  final String text;
  const BulletedTextItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text(
        "\u2022",
        style: TextStyle(fontSize: 12, color: Colors.black),
      ),
      const SizedBox(width: 4),
      Expanded(
          child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.black),
      ))
    ]);
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../controller/rg.dart';

// class RandomNumberApp extends StatelessWidget {
//   const RandomNumberApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Random number generator'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const RandomConsumer(),
//               // Consumer to call a method inside StateNotifier just to change
//               // the state
//               Consumer(
//                 builder: (context, ref, child) {
//                   return ElevatedButton(
//                     child: const Text('Generate'),
//                     onPressed: () =>
//                         ref.read(randomNumberProvider.notifier).generate(),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// //Custom consumer using the provider
// class RandomConsumer extends ConsumerWidget {
//   const RandomConsumer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Text(ref.watch(randomNumberProvider).toString());
//   }
// }
