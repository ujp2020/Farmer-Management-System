import 'package:flutter/material.dart';
import 'options.dart';
import 'package:plantx/Landingscreen.dart';

class Disease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF39FF14),
        centerTitle: true,
        title: Text('LeAF',
          style: TextStyle(
              color: Colors.black
          ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return LandingScreen(button:'Apple',);}));
                      },
                      child:  Options(
                          crop: 'Apple',
                          color: Colors.red,
                          c2: Colors.red,
                          c1: Colors.redAccent.withOpacity(0.8)
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return LandingScreen(button:'Tomato',);}));
                      },
                      child: Options(
                        crop: 'Tomato',
                        color: Color(0xFFE5593F),
                        c2: Color(0xFFE5593F).withRed(1000),
                        c1: Color(0xFFFF6347),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return LandingScreen(button:'Strawberry',);}));
                      },
                      child: Options(
                        crop: 'Strawberry',
                        color: Colors.pink,
                        c2: Colors.pink,
                        c1: Colors.pinkAccent,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return LandingScreen(button:'Corn',);}));
                      },
                      child: Options(
                        crop: 'Corn',
                        color: Color(0xFFCCCC00),
                        c2: Color(0xFFCCCC00),
                        c1: Color(0xFFFBEC5D),
                      ),
                    )),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return LandingScreen(button:'Potato',);}));
                      },
                      child: Options(
                        crop: 'Potato',
                        color: Color(0xFFb79268),
                        c2: Color(0xFFb79268),
                        c1: Color(0xFFb79268).withOpacity(0.8),
                      ),
                    )),
                Expanded(child: Container())
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
