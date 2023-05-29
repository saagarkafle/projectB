import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colours.dart';

class LineGraphChart extends StatefulWidget {
  const LineGraphChart({super.key});

  @override
  State<LineGraphChart> createState() => _LineGraphChartState();
}

class _LineGraphChartState extends State<LineGraphChart> {
  List<Color> gradientColors = [
    const Color.fromARGB(255, 0, 138, 251),
    const Color.fromARGB(255, 237, 119, 153),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: const Text('Line Graph Chart'),
      ),
      body: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.70,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 18,
                left: 12,
                top: 24,
                bottom: 12,
              ),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 34,
            child: TextButton(
              onPressed: () {
                setState(() {
                  showAvg = !showAvg;
                });
              },
              child: Text(
                'avg',
                style: TextStyle(
                  fontSize: 12,
                  color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white);
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Nov', style: style);
        break;
      case 2:
        text = const Text('Dec', style: style);
        break;
      case 3:
        text = const Text('Jan', style: style);
        break;
      case 4:
        text = const Text('Feb', style: style);
        break;
      case 5:
        text = const Text('Mar', style: style);
        break;
      case 6:
        text = const Text('Apr', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white);
    String text;
    switch (value.toInt()) {
      case 1:
        text = '100';
        break;
      case 2:
        text = '200';
        break;
      case 3:
        text = '300';
        break;
      case 4:
        text = '400';
        break;
      case 5:
        text = '500';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,

        drawVerticalLine: true,
        drawHorizontalLine: false,
        // horizontalInterval: 1,
        verticalInterval: 1,
        // getDrawingHorizontalLine: (value) {
        //   return FlLine(
        //     color: Colors.blue,
        //     strokeWidth: 1,
        //   );
        // },

        // this will give properties to vertical lines
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color.fromARGB(255, 82, 125, 160),
            strokeWidth: 0.5,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(1, 2),
            FlSpot(2, 3),
            FlSpot(3, 4),
            FlSpot(4, 3),
            FlSpot(5, 2),
            FlSpot(6, 5),
          ],
          // this bool can toggle the line into curve
          isCurved: false,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          // this is the width that forms the line
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
          // isStrokeJoinRound: false,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 1),
            FlSpot(1, 2),
            FlSpot(4, 3),
            FlSpot(3, 4),
            FlSpot(6, 5),
            FlSpot(6, 6),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          show: true,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class Chart extends StatefulWidget {
//   const Chart({super.key});

//   @override
//   State<Chart> createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   late List<_ChartData> data;
//   late TooltipBehavior _tooltip;

//   @override
//   void initState() {
//     data = [
//       _ChartData('CHN', 12),
//       _ChartData('GER', 15),
//       _ChartData('RUS', 30),
//       _ChartData('BRZ', 6.4),
//       _ChartData('IND', 14)
//     ];
//     _tooltip = TooltipBehavior(enable: true);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Syncfusion Flutter chart'),
//         ),
//         body: SfCartesianChart(
//             primaryXAxis: CategoryAxis(),
//             primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
//             tooltipBehavior: _tooltip,
//             series: <ChartSeries<_ChartData, String>>[
//               AreaSeries<_ChartData, String>(
//                   dataSource: data,
//                   xValueMapper: (_ChartData data, _) => data.x,
//                   yValueMapper: (_ChartData data, _) => data.y,
//                   name: 'Gold',
//                   color: const Color.fromRGBO(8, 142, 255, 1))
//             ]));
//   }
// }

// class _ChartData {
//   _ChartData(this.x, this.y);

//   final String x;
//   final double y;
// }

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';
// import 'package:whatsapp/constants/colours.dart';

// class Chart extends StatelessWidget {
//   const Chart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Charts'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Chart'),
//             Center(child: SfCartesianChart(
//             primaryXAxis: CategoryAxis(),
//             primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
//             tooltipBehavior: _tooltip,
//             series: <ChartSeries<_ChartData, String>>[
//               AreaSeries<_ChartData, String>(
//                   dataSource: data,
//                   xValueMapper: (_ChartData data, _) => data.x,
//                   yValueMapper: (_ChartData data, _) => data.y,
//                   name: ‘Gold’,
//                   color: Color.fromRGBO(8, 142, 255, 1))
//             ]));,)
//             // Center(
//             //     child: SfSparkLineChart(
//             //   highPointColor: AppColors.redColor,

//             //   axisCrossesAt:BorderSide.strokeAlignCenter,
//             //   trackball: SparkChartTrackball(

//             //     color: AppColors.bgColor,
//             //   ),
//             //   data: const <double>[645, 720, 780, 710, 650, 810],
//             // ))
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:whatsapp/UI/screens/charts/price_point.dart';

// class BarChartWidget extends StatefulWidget {
//   const BarChartWidget({Key? key, required this.points}) : super(key: key);

//   final List<PricePoint> points;

//   @override
//   State<BarChartWidget> createState() => _BarChartWidgetState(points: points);
// }

// class _BarChartWidgetState extends State<BarChartWidget> {
//   final List<PricePoint> points;

//   _BarChartWidgetState({required this.points});

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2,
//       child: BarChart(
//         BarChartData(
//           barGroups: _chartGroups(),
//           borderData: FlBorderData(
//               border: const Border(bottom: BorderSide(), left: BorderSide())),
//           gridData: FlGridData(show: false),
//           titlesData: FlTitlesData(
//             bottomTitles: AxisTitles(sideTitles: _bottomTitles),
//             leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//             topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//             rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//           ),
//         ),
//       ),
//     );
//   }

//   List<BarChartGroupData> _chartGroups() {
//     return points
//         .map((point) => BarChartGroupData(
//             x: point.x.toInt(), barRods: [BarChartRodData(toY: point.y)]))
//         .toList();
//   }

//   SideTitles get _bottomTitles => SideTitles(
//         showTitles: true,
//         getTitlesWidget: (value, meta) {
//           String text = '';
//           switch (value.toInt()) {
//             case 0:
//               text = 'Jan';
//               break;
//             case 2:
//               text = 'Mar';
//               break;
//             case 4:
//               text = 'May';
//               break;
//             case 6:
//               text = 'Jul';
//               break;
//             case 8:
//               text = 'Sep';
//               break;
//             case 10:
//               text = 'Nov';
//               break;
//           }

//           return Text(text);
//         },
//       );
// }
