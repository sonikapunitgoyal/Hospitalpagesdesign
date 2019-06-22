import 'basic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.grey[100]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
          backgroundColor: Colors.grey[50], fontFamily: 'Raleway'),
      home: new ListPage(title: 'Lessons'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget makeListTile(Basic lesson) => Column(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 160.0,
                    width: 270.0,
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(lesson.image,),
                    )),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          child: Image.asset(
                            "assets/play-button.png",
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, right: 10.0),
                            child: Container(
                              // alignment: Alignment.bottomCenter,
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 10.0, right: 0.0),
                              child: Text(
                                lesson.name,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                              padding: new EdgeInsets.only(
                                top: 8.0,
                                right: 2.0,
                              ),
                              child: Image.asset(
                                'assets/badge.png',
                                height: 30.0,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/rupee.png',
                              height: 12.0,
                            ),
                            Text(
                              lesson.startPrice.toString() + '-',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'assets/rupee.png',
                              height: 12.0,
                            ),
                            Text(
                              lesson.endPrice.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(' per visit',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Text(
                              ' [5.0] 13 reviews',
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                lesson.distance.toString() + " km away ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/arrow-spark.png',
                              height: 10.0,
                            ),
                            Text(
                              lesson.experence.toString() + "yrs exp.",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset('assets/doctor-bag.png', height: 10.0),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Worked with ' +
                                    lesson.doctor.toString() +
                                    ' doctor',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.school,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                lesson.specialization,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(height: 50.0,
                  child: FlatButton(
                    child: ListTile(
                      leading: Image.asset(
                        "assets/call.png",
                       height: 30.0,
                      ),
                      trailing: Text('Hire Me'),
                    ),
                    onPressed: () {},
                    color: Colors.teal[50],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 50.0,
                  child: FlatButton(
                    child: Text('View Profile'),
                    onPressed: () {},
                    color: Colors.grey[300],
                  ),
                 
                ),
              )
            ],
          )
        ]);

    Card makeCard(Basic lesson) => Card(
          margin: new EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Find suitable nurse here',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Image.asset('assets/filter.png', height: 30.0),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => MyDialog());
              },
            ),
          ),
        ),
      ),
      Expanded(
        child: Container(
          // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: lessons.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(height: 243.0, child: makeCard(lessons[index]));
            },
          ),
        ),
      )
    ]);

    final makeBottom = BottomAppBar(
        child: Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: FloatingActionButton(backgroundColor: Color(0xff3C7FF4),
              onPressed: () {},
              tooltip: 'Increment',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/home.png',
                    height: 50.0,
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/start.png',
                  height: 40.0,
                ),
                Text('Favorites'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Image.asset('assets/reports.png', height: 40.0),
                Text('Reports')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Image.asset('assets/patients.png', height: 40.0),
                Text('Patients')
              ],
            ),
          )
        ],
      ),
    ));

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

List getLessons() {
  return [
    Basic(
        name: "Perena Vasu",
        startPrice: 200,
        endPrice: 500,
        image: "assets/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Bhumi Jain",
        startPrice: 200,
        endPrice: 500,
        image: "assets/2.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Anamika Khanna",
        startPrice: 200,
        endPrice: 500,
        image: "assets/3.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Anjali Tiwari",
        startPrice: 200,
        endPrice: 500,
        image: "assets/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Sonika Goyal",
        startPrice: 200,
        endPrice: 500,
        image: "assets/2.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Jyoti Sharma",
        startPrice: 200,
        endPrice: 500,
        image: "assets/3.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
    Basic(
        name: "Shivani Kalra",
        startPrice: 200,
        endPrice: 500,
        image: "assets/1.png",
        distance: 1.3,
        experence: 3.5,
        specialization: "specialization1",
        doctor: 13),
  ];
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  double _lowerValue = 200.0;
  double _upperValue = 400.0;
  double _lowerAge = 2.0;
  double _upperAge = 7.0;
  bool isTrue = false;
  bool isTrue1 = false;
  bool isTrue2 = false;
  bool isTrue3 = false;
  bool isTrue4 = false;
  bool isTrue5 = false;
  bool isTrue6 = false;
  bool isTrue7 = false;
  bool isTrue8 = false;
  bool changeSize1=true;
  bool changeSize2=true;
  bool changeSize3=true;
  

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Reset',
                    style:changeSize1? TextStyle(fontSize: 15.0):TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {setState(() {
                    changeSize1=!changeSize1;
                  });},
                ),
                FlatButton(
                  child: Text(
                    'Filter by',
                   style:changeSize2
                   ? TextStyle(fontSize: 15.0)
                   :TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                    changeSize2=!changeSize2;
                  }
                  );
                  },
                ),
                FlatButton(
                  child: Text(
                    'Apply',
                   style:TextStyle(fontSize: 15.0,color: Colors.blue),
                  ),
                  onPressed: () {setState(() {
                   
                  });},
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Price Range',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
          SliderTheme(
              data: SliderTheme.of(context).copyWith(activeTrackColor: Color(0xff3C7FF4),inactiveTrackColor: Colors.grey[300],thumbColor: Color(0xff3C7FF4),trackHeight: 3.0,inactiveTickMarkColor: Colors.grey[300]),
             child:    RangeSlider(
              min: 0.0,
              max: 1000.0,
              lowerValue: _lowerValue,
              upperValue: _upperValue,
              divisions: 100,
              showValueIndicator: true,
              valueIndicatorFormatter: (int index, double value) {
                int intValue = value.toInt();
                return 'Rs $intValue';
              },
              onChanged: (double newLowerValue, double newUpperValue) {
                setState(() {
                  _lowerValue = newLowerValue;
                  _upperValue = newUpperValue;
                });
              },
            ),),
            Text(
              'Nurse Type',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(children: <Widget>[
              Checkbox(
                value: isTrue,
                checkColor: Colors.grey[400],
                activeColor: Colors.grey[200],
                onChanged: (bool value) {
                  setState(() {
                    isTrue = value;
                  });
                },
              ),
              Text('Certified'),
            ]),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Specialisation',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(children: <Widget>[
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue1,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {
                      setState(() {
                        isTrue1 = value;
                      });
                    },
                  ),
                  Text('Text1'),
                ]),
              ),
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue2,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {
                      setState(() {
                        isTrue2 = value;
                      });
                    },
                  ),
                  Text('Text2'),
                ]),
              ),
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue3,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {
                      setState(() {
                        isTrue3 = value;
                      });
                    },
                  ),
                  Text('Text3'),
                ]),
              ),
            ]),
            Row(children: <Widget>[
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue4,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {
                      setState(() {
                        isTrue4 = value;
                      });
                    },
                  ),
                  Text('Text1'),
                ]),
              ),
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue5,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool val) {
                      setState(() {
                        isTrue5 = val;
                      });
                    },
                  ),
                  Text('Text2'),
                ]),
              ),
              Flexible(
                child: Row(children: <Widget>[
                  Checkbox(
                    value: isTrue6,
                    checkColor: Colors.grey[400],
                    activeColor: Colors.grey[200],
                    onChanged: (bool value) {
                      setState(() {
                        isTrue6 = value;
                      });
                    },
                  ),
                  Text('Text3'),
                ]),
              ),
            ]),
            Text(
              'Star Rating',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 70,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      '3 star',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 70.0,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      '4 star',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 70.0,
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      '5 star',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Experience',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
           
             SliderTheme(
              data: SliderTheme.of(context).copyWith(valueIndicatorColor:Color(0xff3C7FF4) ,
         
              
               activeTrackColor: Color(0xff3C7FF4),inactiveTrackColor: Colors.grey[300],thumbColor: Color(0xff3C7FF4),trackHeight: 3.0,inactiveTickMarkColor: Colors.grey[300]),
             child: RangeSlider(
                min: 0,
                max: 10,
                lowerValue: _lowerAge,
                upperValue: _upperAge,
                divisions: 10,
                showValueIndicator: true,
                valueIndicatorFormatter: (int index, double value) {
                  int intValue = value.toInt();
                  return '$intValue yrs';
                },
                onChanged: (double newLowerValue, double newUpperValue) {
                  setState(() {
                    _lowerAge = newLowerValue;
                    _upperAge = newUpperValue;
                  });
                },
              ),
             )
          ],
        ),
      ),
      Positioned(
          top: 30.0,
          right: 16.0,
          child: Transform.scale(
            scale: 0.4,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ))
    ]);
  }
}
