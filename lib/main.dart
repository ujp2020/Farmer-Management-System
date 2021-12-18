import 'package:flutter/material.dart';
import 'package:plantx/Disease.dart';
import 'package:plantx/weather.dart';
import 'Networking.dart';
import 'package:plantx/Thanks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'trade.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget boxbutton(Color c1, Color c2, String type,IconData icon) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
              colors: [c1, c2],
              tileMode: TileMode.repeated,
            ),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2))
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
              color: Colors.black,
              size: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(type,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
          ],
        )
    );
  }

  var weatherdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF39FF14),
        centerTitle: true,
        title: Text(
          'LeAF',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10,),
          Expanded(flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Disease();
                            },
                          ),
                        );
                      },
                      child: boxbutton(
                          Colors.lightGreen, Colors.lightGreenAccent, 'Disease',FontAwesomeIcons.leaf)
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(()   {
                           weatherdata =  networking();
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Weather(weather:weatherdata,);
                            },
                          ),
                        );
                      },
                      child: boxbutton(
                          Colors.orange, Colors.orangeAccent, 'Weather',FontAwesomeIcons.cloudSunRain)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Trade();
                            },
                          ),
                        );
                      },
                      child: boxbutton(
                          Colors.yellow, Colors.yellowAccent, 'Trade',FontAwesomeIcons.store)
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Thanks();
                            },
                          ),
                        );
                      },
                      child: boxbutton(
                          Colors.lightBlue, Colors.lightBlueAccent, 'Community',FontAwesomeIcons.solidComments)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container())
        ],
      ),
    );
  }
}
