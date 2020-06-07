import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    child: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Container(
              child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    child: ClipPolygon(
                                      sides: 6,
                                      borderRadius: 8.0, // Default 0.0 degrees
                                      rotate: 90.0, // Default 0.0 degrees
                                      boxShadows: [
                                        PolygonBoxShadow(
                                            color: Color(0xff29abe2),
                                            elevation: 3.0),
                                      ],
                                      child: Container(
                                        child: Image.asset(
                                          'images/hexa-01.jpg',
                                          scale: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Hexa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Ambit',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Our modular system enables producing fresh vegetables right at your home!",
                                              style: TextStyle(
                                                  fontFamily: 'Ambit',
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            height: 25,
                                            child: Center(
                                              child: Container(
                                                color: Color(0xff29abe2),
                                                child: Text(
                                                  'Read More',
                                                  style: TextStyle(
                                                      fontFamily: 'Ambit',
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    child: ClipPolygon(
                                      sides: 6,
                                      borderRadius: 8.0, // Default 0.0 degrees
                                      rotate: 90.0, // Default 0.0 degrees
                                      boxShadows: [
                                        PolygonBoxShadow(
                                            color: Color(0xff29abe2),
                                            elevation: 3.0),
                                      ],
                                      child: Container(
                                        child: Image.asset(
                                          'images/hexa-01.jpg',
                                          scale: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Hexa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Ambit',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Our modular system enables producing fresh vegetables right at your home!",
                                              style: TextStyle(
                                                  fontFamily: 'Ambit',
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            height: 25,
                                            child: Center(
                                              child: Container(
                                                color: Color(0xff29abe2),
                                                child: Text(
                                                  'Read More',
                                                  style: TextStyle(
                                                      fontFamily: 'Ambit',
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    child: ClipPolygon(
                                      sides: 6,
                                      borderRadius: 8.0, // Default 0.0 degrees
                                      rotate: 90.0, // Default 0.0 degrees
                                      boxShadows: [
                                        PolygonBoxShadow(
                                            color: Color(0xff29abe2),
                                            elevation: 3.0),
                                      ],
                                      child: Container(
                                        child: Image.asset(
                                          'images/hexa-01.jpg',
                                          scale: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Hexa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Ambit',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Our modular system enables producing fresh vegetables right at your home!",
                                              style: TextStyle(
                                                  fontFamily: 'Ambit',
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            height: 25,
                                            child: Center(
                                              child: Container(
                                                color: Color(0xff29abe2),
                                                child: Text(
                                                  'Read More',
                                                  style: TextStyle(
                                                      fontFamily: 'Ambit',
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    child: ClipPolygon(
                                      sides: 6,
                                      borderRadius: 8.0, // Default 0.0 degrees
                                      rotate: 90.0, // Default 0.0 degrees
                                      boxShadows: [
                                        PolygonBoxShadow(
                                            color: Color(0xff29abe2),
                                            elevation: 3.0),
                                      ],
                                      child: Container(
                                        child: Image.asset(
                                          'images/hexa-01.jpg',
                                          scale: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Hexa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Ambit',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Our modular system enables producing fresh vegetables right at your home!",
                                              style: TextStyle(
                                                  fontFamily: 'Ambit',
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            height: 25,
                                            child: Center(
                                              child: Container(
                                                color: Color(0xff29abe2),
                                                child: Text(
                                                  'Read More',
                                                  style: TextStyle(
                                                      fontFamily: 'Ambit',
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    child: ClipPolygon(
                                      sides: 6,
                                      borderRadius: 8.0, // Default 0.0 degrees
                                      rotate: 90.0, // Default 0.0 degrees
                                      boxShadows: [
                                        PolygonBoxShadow(
                                            color: Color(0xff29abe2),
                                            elevation: 3.0),
                                      ],
                                      child: Container(
                                        child: Image.asset(
                                          'images/hexa-01.jpg',
                                          scale: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Hexa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Ambit',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 150,
                                            child: Text(
                                              "Our modular system enables producing fresh vegetables right at your home!",
                                              style: TextStyle(
                                                  fontFamily: 'Ambit',
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            height: 25,
                                            child: Center(
                                              child: Container(
                                                color: Color(0xff29abe2),
                                                child: Text(
                                                  'Read More',
                                                  style: TextStyle(
                                                      fontFamily: 'Ambit',
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
        ),
      ],
    ),
  );
}
