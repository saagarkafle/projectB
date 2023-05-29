import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
            tooltipBehavior: _tooltip,
            series: <ChartSeries<_ChartData, String>>[
              AreaSeries<_ChartData, String>(
                  dataSource: data,
                  xValueMapper: (_ChartData data, _) => data.x,
                  yValueMapper: (_ChartData data, _) => data.y,
                  name: 'Gold',
                  color: const Color.fromRGBO(8, 142, 255, 1))
            ]));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

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
