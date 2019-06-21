import 'package:flutter/material.dart';
// import 'package:path/path.dart';
// import 'nurse.dart';
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
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height*0.40,
                width: MediaQuery.of(context).size.width,
              ),
              clipper: BottomWaveClipper(),
            ),
            Positioned(
              left: 30.0,
              top: 70.0,
              child: Image.asset('assets/hamburger.png',height:30.0 ,width: 30.0,),
              height: 60.0,
            ),
            Positioned(
              left: 90.0,
              top: 70.0,
              height:MediaQuery.of(context).size.height*0.08 ,
              width: MediaQuery.of(context).size.width*0.75,
              child: Container(padding: EdgeInsets.all(10.0),alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.white),
                child: Center(
                  child: ListTile(
                    trailing: Icon(Icons.search, color: Colors.blue),
                    title: TextField( 
                      decoration: InputDecoration(
                          hintText: 'Search here', border: InputBorder.none,),
                    ),
                  ),
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 150.0,left: 30.0,right: 30.0,bottom: 30.0),
             child: Container(
                 
                  width: MediaQuery.of(context).size.width*0.40,
                  height: MediaQuery.of(context).size.height*0.27,
                  child: InkWell(onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp1()),
                  );},
                      child: Card(
                    elevation: 20.0,
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
            Padding(
              padding: const EdgeInsets.only(top: 150.0,left: 220.0,right: 30.0,bottom: 30.0),
              child: Container(
                 width: MediaQuery.of(context).size.width*0.40,
                  height: MediaQuery.of(context).size.height*0.27,
                  child: Container(
                    child: Card(
                      elevation: 20.0,
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
             Padding(
               padding:const EdgeInsets.only(top: 350.0,left: 07.0,right: 30.0,),
               child: Container(
                width: MediaQuery.of(context).size.width*0.54,
                  height: MediaQuery.of(context).size.height*0.35,
                padding: EdgeInsets.all(30.0),
                child: Card(
                  elevation: 20.0,
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
            Padding(
              padding: const EdgeInsets.only(top: 380.0,left: 220.0,right: 30.0,),
              child: Container(
                 width: MediaQuery.of(context).size.width*0.40,
                  height: MediaQuery.of(context).size.height*0.26,
                child: Card(
                  elevation: 20.0,
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
    );
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