import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class LineChartSample1 extends StatefulWidget {
  var _value;

  LineChartSample1(int value) {
    _value = value;
  }

  @override
  State<StatefulWidget> createState() => LineChartSample1State(_value);
}

class LineChartSample1State extends State<LineChartSample1> {
  var _value;

  LineChartSample1State(int value) {
    _value = value;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: ClipPolygon(
        sides: 6,
        borderRadius: 8.0, // Default 0.0 degrees
        rotate: 90.0, // Default 0.0 degrees
        boxShadows: [
          PolygonBoxShadow(color: Colors.black, elevation: 1.0),
          PolygonBoxShadow(color: Colors.grey[900], elevation: 5.0)
        ],
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            gradient: LinearGradient(
              colors: const [
                Color(0xff2c274c),
                Color(0xff46426c),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("OOMG"),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 45.0, top: 50.0, bottom: 26.0),
                      child: LineChart(
                        sampleData1(_value),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  LineChartData sampleData1(value) {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 20,
          textStyle: const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MON';
              case 7:
                return 'TUE';
              case 12:
                return 'WED';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '18°C';
              case 2:
                return '20°C';
              case 3:
                return '22°C';
              case 4:
                return '24°C';
            }
            return '';
          },
          reservedSize: 25,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(value),
    );
  }

  List<LineChartBarData> linesBarData1(value) {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final LineChartBarData lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );

    final lineChartDataList = [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];

    return [lineChartDataList[value]];
  }
}
