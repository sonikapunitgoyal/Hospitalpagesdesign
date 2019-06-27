import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'nurse.dart';
import 'package:responsive_container/responsive_container.dart';
import 'list.dart';


class WavyHeaderImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WavyHeaderImageState();
  }
}

class WavyHeaderImageState extends State<WavyHeaderImage> {
 
  List<String> images = [
    'nurse.png',
    'hospital.png',
  ];

  List<String> image = [
    'medicine.png',
    'doctor.png',
  ];
  List<String> texts = ['nurses', 'hospitals'];
  String filename;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
        final width=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Stack(overflow: Overflow.visible,
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Color(0xff3C7FF4),
                height: MediaQuery.of(context).size.height * 0.40,
                width: width,
              ),
              clipper: BottomWaveClipper(),
            ),
            Positioned(
              left: height * 0.04,
              top: height * 0.08,
              child: Image.asset(
                'assets/hamburger.png',
                height: 30.0,
                width: 30.0,
              ),
              height: 60.0,
            ),
            Positioned(
              left: height * 0.11,
              top:height * 0.09,
              height: height * 0.07,
              width:width * 0.45,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white),
                child: Center(
                  child: ListTile(
                    trailing: Icon(Icons.search, color: Color(0xff3C7FF4)),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
             Positioned(
              
                top: height*0.22,left:width* 0.05,
                
              child: ResponsiveContainer(

                 heightPercent:28.0 ,
                 widthPercent: 40.0,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp1()),
                        );
                      },
                      child: Card(
                        elevation: 5.0,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/nurse.png",
                                height: 100.0, width: 100.0),
                            Text(
                              'Nurses',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ))),
            ),
             Positioned(
              
                top: height*0.53,right:width* 0.05,
                
              child: ResponsiveContainer(

                 heightPercent:28.0 ,
                 widthPercent: 40.0,
                  child: Container(
                    child: Card(
                      elevation: 5.0,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/hospital.png",
                            height: 100.0,
                            width: 100.0,
                          ),
                          Text(
                            'Hospitals',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            Positioned(
              
                top: height*0.53,left:width* 0.05,
                
            child: ResponsiveContainer(

                 heightPercent:28.0 ,
                 widthPercent: 40.0,
               
                child: Card(
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/medison.png",
                        height: 100.0,
                        width: 100.0,
                      ),
                      Text(
                        'Medical Store',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              
                top: height*0.22,right:width* 0.05,
                
             child: ResponsiveContainer(

                 heightPercent:28.0 ,
                 widthPercent: 40.0,
                child: Card(
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/doctor.png",
                        height: 100.0,
                        width: 100.0,
                      ),
                      Text(
                        'Doctor',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
