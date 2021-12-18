import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plantx/buy.dart';
import 'sell.dart';
import 'buy.dart';

class Farmer extends StatefulWidget {
  @override
  _FarmerState createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  Widget boxbutton(Color c1, Color c2, String type, IconData icon) {
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
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              type,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Sell();
                          },
                        ),
                      );
                    },
                    child: boxbutton(Colors.red, Colors.redAccent, "Sell",
                        FontAwesomeIcons.moneyBill),
                  ),
                ),
                Expanded(child: GestureDetector(

                  child: boxbutton(Colors.lightGreen, Colors.lightGreenAccent, 'Buy', FontAwesomeIcons.buyNLarge),
                ),),
              ],
            ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(child: boxbutton(Colors.blue, Colors.blueAccent, 'Buy History', FontAwesomeIcons.history),),),
              Expanded(child: GestureDetector(child: boxbutton(Colors.yellow, Colors.yellowAccent, 'Sell History', FontAwesomeIcons.history),))
            ],
          ),),
          Expanded(flex: 2,
              child: Container(child: null,))
        ],
      ),
    );
  }
}
