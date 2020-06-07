import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class StatPage extends StatefulWidget {
  @override
  _StatPageState createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            color: Colors.grey[900],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 110.0, right: 110.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 75,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset(
                                  'images/lettuce-01.png',
                                  color: Color(0xff22b573),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: Text(
                                "Lettuce",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Ambit',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffFDE74C).withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: SfRadialGauge(axes: <RadialAxis>[
                                  RadialAxis(
                                      interval: 10,
                                      startAngle: 0,
                                      endAngle: 360,
                                      showTicks: false,
                                      showLabels: false,
                                      axisLineStyle:
                                          AxisLineStyle(thickness: 20),
                                      pointers: <GaugePointer>[
                                        RangePointer(
                                            value: 88,
                                            width: 20,
                                            color: Color(0xFFFDE74C),
                                            enableAnimation: true,
                                            cornerStyle: CornerStyle.bothCurve)
                                      ],
                                      annotations: <GaugeAnnotation>[
                                        GaugeAnnotation(
                                            widget: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 5),
                                                  child: Container(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          'Temp.',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily: 'Ambit',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[200],
                                                          ),
                                                        ),
                                                        Text(
                                                          '22°C',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily: 'Ambit',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 30,
                                                            color: Colors
                                                                .grey[200],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            angle: 270,
                                            positionFactor: 0.1)
                                      ]),
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF29abe2).withOpacity(.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: SfRadialGauge(axes: <RadialAxis>[
                                RadialAxis(
                                    interval: 10,
                                    startAngle: 0,
                                    endAngle: 360,
                                    showTicks: false,
                                    showLabels: false,
                                    axisLineStyle: AxisLineStyle(thickness: 20),
                                    pointers: <GaugePointer>[
                                      RangePointer(
                                          value: 50,
                                          width: 20,
                                          color: Color(0xFF29abe2),
                                          enableAnimation: true,
                                          cornerStyle: CornerStyle.bothCurve)
                                    ],
                                    annotations: <GaugeAnnotation>[
                                      GaugeAnnotation(
                                          widget: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 5),
                                                child: Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        'Water',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'Ambit',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,
                                                          color:
                                                              Colors.grey[200],
                                                        ),
                                                      ),
                                                      Text(
                                                        '50%',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'Ambit',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 30,
                                                          color:
                                                              Colors.grey[200],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          angle: 15,
                                          positionFactor: 0.1)
                                    ])
                              ]),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '2 days to harvest',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Ambit',
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.grey[200],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.25,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF29abe2).withOpacity(.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 2),
                                )
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF29abe2),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      height: 30, color: Color(0x0029abe2)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());
    return MatrixGestureDetector(
      onMatrixUpdate: (m, tm, sm, rm) {
        notifier.value = m;
        print(m);
      },
      child: AnimatedBuilder(
          animation: notifier,
          builder: (ctx, child) {
            return Transform(
              transform: notifier.value,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 100.0, bottom: 15.0, right: 7.0, left: 15.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      left: 225,
                      top: 65,
                      width: 150,
                      child: MaterialButton(
                        onPressed: _showModalSheet,
                        padding: const EdgeInsets.all(0),
                        child: ClipPolygon(
                          sides: 6,
                          borderRadius: 8.0, // Default 0.0 degrees
                          rotate: 90.0, // Default 0.0 degrees
                          boxShadows: [
                            PolygonBoxShadow(
                                color: Color(0xff29abe2), elevation: 3.0),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)),
                              gradient: LinearGradient(
                                colors: const [
                                  Color(0xff29abe2),
                                  Color(0xff22b573),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(45.0),
                              child: Image.asset(
                                'images/lettuce-01.png',
                                color: Color(0xffeeeeee),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 112,
                      top: 0,
                      width: 150,
                      child: ClipPolygon(
                        sides: 6,
                        borderRadius: 8.0, // Default 0.0 degrees
                        rotate: 90.0, // Default 0.0 degrees
                        boxShadows: [
                          PolygonBoxShadow(
                              color: Color(0xff29abe2), elevation: 3.0),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                            gradient: LinearGradient(
                              colors: const [
                                Color(0xff29abe2),
                                Color(0xff22b573),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Image.asset(
                              'images/mint-01.png',
                              color: Color(0xffeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 195,
                      width: 150,
                      child: ClipPolygon(
                        sides: 6,
                        borderRadius: 8.0, // Default 0.0 degrees
                        rotate: 90.0, // Default 0.0 degrees
                        boxShadows: [
                          PolygonBoxShadow(
                              color: Color(0xff29abe2), elevation: 3.0),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                            gradient: LinearGradient(
                              colors: const [
                                Color(0xff29abe2),
                                Color(0xff22b573),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Image.asset(
                              'images/lettuce-01.png',
                              color: Color(0xffeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 225,
                      top: 195,
                      width: 150,
                      child: ClipPolygon(
                        sides: 6,
                        borderRadius: 8.0, // Default 0.0 degrees
                        rotate: 90.0, // Default 0.0 degrees
                        boxShadows: [
                          PolygonBoxShadow(
                              color: Color(0xff29abe2), elevation: 3.0),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                            gradient: LinearGradient(
                              colors: const [
                                Color(0xff29abe2),
                                Color(0xff22b573),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Image.asset(
                              'images/mint-01.png',
                              color: Color(0xffeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 112,
                      top: 130,
                      width: 150,
                      child: ClipPolygon(
                        sides: 6,
                        borderRadius: 8.0, // Default 0.0 degrees
                        rotate: 90.0, // Default 0.0 degrees
                        boxShadows: [
                          PolygonBoxShadow(
                              color: Color(0xff29abe2), elevation: 5.0),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18)),
                            gradient: LinearGradient(
                              colors: const [
                                Color(0xff29abe2),
                                Color(0xff22b573),
                              ],
                              stops: [0.8, 1.0],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Image.asset(
                              'images/strawberry-01.png',
                              color: Color(0xffeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
