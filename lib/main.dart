import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'clippath.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:responsive_container/responsive_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xff3C7FF4));
    
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
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: WavyHeaderImage()),
        bottomNavigationBar: BottomAppBar(
            child: ResponsiveContainer(
        heightPercent: 12.0,widthPercent: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               ResponsiveContainer(
        heightPercent:30.0,widthPercent:30.0,alignment: new Alignment(0.0, -2),
                 child: FloatingActionButton(
                    onPressed: () {},backgroundColor: Color(0xff3C7FF4),
                    tooltip: 'Increment',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/home.png',
                          height: 25.0,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
               ),
              
              Padding(padding: const EdgeInsets.all(15.0),
                              child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/start.png',
                      height: 25.0,
                    ),
                    Text('Favorites', style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/reports.png', height: 25.0),
                    Text('Reports', style: TextStyle(color: Colors.grey[600]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/patients.png', height: 25.0),
                    Text(
                      'Patients',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
