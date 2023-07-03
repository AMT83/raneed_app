import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<Color> gradientColors = [
    Colors.black,
    Colors.red,
  ];
  Color desiredColor = const Color.fromRGBO(37, 181, 218, 1);
  Color desiredColor2 = const Color.fromRGBO(56, 163, 165, 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 8,
              left: 12,
              top: 5,
              bottom: 5,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      letterSpacing: 0.50,
      // fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Jan', style: style);
        break;
      case 3:
        text = const Text('Fep', style: style);
        break;
      case 5:
        text = const Text('Mar', style: style);
        break;
      case 7:
        text = const Text('Apr', style: style);
        break;
      case 9:
        text = const Text('May', style: style);
        break;
      case 11:
        text = const Text('Jul', style: style);
        break;
      case 13:
        text = const Text('Aug', style: style);
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
      fontFamily: 'Tajawal',
      fontWeight: FontWeight.w400,
      letterSpacing: 0.50,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '١٠٠٠';
        break;
      case 2:
        text = '٢٠٠٠';
        break;
      case 3:
        text = '٣٠٠٠';
        break;
      case 4:
        text = '٤٠٠٠';
        break;
      case 5:
        text = '٥٠٠٠';
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
        drawVerticalLine: false,
        drawHorizontalLine: true,
        horizontalInterval: 1,
        //  verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.grey,
            strokeWidth: 1,
            dashArray: [4],
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 30,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(bottom: BorderSide(color: Colors.grey, width: 1)),
      ),
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 2),
            FlSpot(2.6, 3.1),
            FlSpot(5, 2.5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(11, 3),
            FlSpot(13, 4.9),
          ],
          isCurved: false,
          // gradient: LinearGradient(
          //   colors: gradientColors,
          // ),
          color: Colors.black,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            getDotPainter: (spot, percent, barData, index) {
              return FlDotCirclePainter(
                radius: 2,
                color: Colors.white,
                strokeWidth: 2,
                strokeColor: Colors.black,
              );
            },
            show: true,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
        LineChartBarData(
          spots: const [
            FlSpot(0, 1.3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 1),
            FlSpot(6.8, 2.1),
            FlSpot(8, 2),
            FlSpot(11, 1),
            FlSpot(13, 2),
          ],
          isCurved: false,
          // gradient: LinearGradient(
          //   colors: gradientColors,
          // ),
          color: desiredColor2,
          barWidth: 2,
          isStrokeCapRound: false,
          dotData: FlDotData(
            getDotPainter: (spot, percent, barData, index) {
              return FlDotCirclePainter(
                  radius: 2,
                  color: Colors.white,
                  strokeWidth: 2,
                  strokeColor: desiredColor);
            },
            show: true,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }
}
