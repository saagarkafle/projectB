import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
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
                mainData(),
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

  final listData = [
    const FlSpot(1, 2),
    const FlSpot(2, 3),
    const FlSpot(3, 4),
    const FlSpot(4, 3),
    const FlSpot(5, 2),
    const FlSpot(6, 5),
  ];
  LineChartData mainData() {
    return LineChartData(
      showingTooltipIndicators: [],
      lineTouchData: LineTouchData(
          enabled: true,
          handleBuiltInTouches: true,
          touchTooltipData: LineTouchTooltipData(
            showOnTopOfTheChartBoxArea: true,
            fitInsideVertically: true,
          )),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: false,
        // horizontalInterval: 1,
        verticalInterval: 1,
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
          spots: listData,
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
}
