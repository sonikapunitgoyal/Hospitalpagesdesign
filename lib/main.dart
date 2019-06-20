import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'clippath.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() => runApp(MyApp(
  
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wavy image mask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( height:MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width, child: WavyHeaderImage()),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/home.png',
                    height: 30.0,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 8.0, color: Colors.white,fontWeight: FontWeight.bold),
                  )
                ],
              ),
              onPressed: () {}),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/start.png',
              height: 40.0,
            ),
            title: new Text('Favorites'),
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/reports.png', height: 40.0),
              title: new Text('Reports')),
          BottomNavigationBarItem(
              icon: Image.asset('assets/patients.png', height: 40.0),
              title: new Text('Patients')),
        ],
      ),
    );
  }
}