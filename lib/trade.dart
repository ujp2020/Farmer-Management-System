import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'prices.dart';
import 'farmer.dart';
import 'trader.dart';

class Trade extends StatefulWidget {
  @override
  _TradeState createState() => _TradeState();
}

class _TradeState extends State<Trade> {
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
              flex:2,
              child: Row(
                children: [
                  Expanded(child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Price();
                          },
                        ),
                      );
                    },
                    child:boxbutton(Colors.cyan, Colors.cyanAccent, "Prices",FontAwesomeIcons.crop) ,)),
                ],
              )
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Farmer();
                          },
                        ),
                      );
                    },
                    child: boxbutton(Colors.lightGreen, Colors.lightGreenAccent,
                        "Farmer", FontAwesomeIcons.sellcast),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Trader();
                          },
                        ),
                      );
                    },
                    child: boxbutton(Colors.purple, Colors.purpleAccent,
                        "Trader", FontAwesomeIcons.buysellads),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                child: null,
              ))
        ],
      ),
    );
  }
}
