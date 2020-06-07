import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'statPage.dart';
import 'communityPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  static Map<int, Color> myColor = {
    50: Color.fromRGBO(16, 67, 89, .1),
    100: Color.fromRGBO(16, 67, 89, .2),
    200: Color.fromRGBO(16, 67, 89, .3),
    300: Color.fromRGBO(16, 67, 89, .4),
    400: Color.fromRGBO(16, 67, 89, .5),
    500: Color.fromRGBO(16, 67, 89, .6),
    600: Color.fromRGBO(16, 67, 89, .7),
    700: Color.fromRGBO(16, 67, 89, .8),
    800: Color.fromRGBO(16, 67, 89, .9),
    900: Color.fromRGBO(16, 67, 89, 1),
  };

  MaterialColor customColor = MaterialColor(0xFF29abe2, myColor);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UrbanLand',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: MyHomePage(title: 'UrbanLand'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 0;
  final _pageOptions = [
    StatPage(),
    CommunityPage(),
    Text('Item 3'),
    Text('Item 4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x0022b573),
              offset: Offset(0, 5.0),
              blurRadius: 10.0,
            )
          ]),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.grey[900],
            title: Center(
              child: Container(
                width: 200,
                child: Image.asset('images/urbanland_logo.png'),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: _pageOptions[_selectedPage],
      floatingActionButton: Container(
        width: 60,
        child: ClipPolygon(
          sides: 6,
          borderRadius: 8.0, // Default 0.0 degrees
          rotate: 90.0, // Default 0.0 degrees
          boxShadows: [
            PolygonBoxShadow(color: Color(0xff29abe2), elevation: 5.0),
          ],
          child: Container(
            width: 10,
            height: 10,
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
            child: FloatingActionButton(
              backgroundColor: Color(0xff29abe2),
              onPressed: null,
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xff29abe2),
            offset: Offset(0, -5.0),
            blurRadius: 10.0,
          )
        ]),
        child: BottomAppBar(
          color: Colors.grey[900],
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton(
                      icon: Icon(Icons.assessment),
                      color: _selectedPage == 0
                          ? Color(0xff29abe2)
                          : Colors.grey[200],
                      iconSize: 40,
                      onPressed: () {
                        setState(() {
                          _selectedPage = 0;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: IconButton(
                      icon: Icon(Icons.people),
                      color: _selectedPage == 1
                          ? Color(0xff29abe2)
                          : Colors.grey[300],
                      iconSize: 40,
                      onPressed: () {
                        setState(() {
                          _selectedPage = 1;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: IconButton(
                      icon: Icon(Icons.beenhere),
                      color: _selectedPage == 2
                          ? Color(0xff29abe2)
                          : Colors.grey[300],
                      iconSize: 40,
                      onPressed: () {
                        setState(() {
                          _selectedPage = 2;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                      icon: Icon(Icons.shopping_cart),
                      color: _selectedPage == 3
                          ? Color(0xff29abe2)
                          : Colors.grey[300],
                      iconSize: 40,
                      onPressed: () {
                        setState(() {
                          _selectedPage = 3;
                        });
                      }),
                ),
              ]),
        ),
      ),
    );
  }
}
