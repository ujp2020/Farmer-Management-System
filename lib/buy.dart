import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {

  Widget buyeqp(String crop,int prices,String ph){

   // final List<String> crop = <String>['Kishan sprayer pump','Grow Sprayer pump','Dixa water pump','Crompton water pump'];
  //  final List<int> prices=<int>[1550,1600,3400,3800];
  //  final List<String> ph =<String>['byu4.jpg','buy3.jpg','buy22.jpg','buy33.jpg'];

        return Row(
          children: [
            Expanded(flex: 2,
              child: Column(
                children: [
                  Image(image: AssetImage('images/$ph')),
                  Text(crop,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Expanded(flex:1,child:Text("$prices",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            Expanded(flex:1,child: Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
              color: Colors.orangeAccent,
              child: Center(child: Text("Buy", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),)),
            ))
          ],
        );


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
          buyeqp('Kishan sprayer pump',1550,'byu4.jpg'),
          buyeqp('Grow Sprayer pump',1600,'buy3.jpg'),
          buyeqp('Dixa water pump',3400,'buy22.jpg'),
          buyeqp('Crompton water pump',3800,'buy33.jpg'),
        ],
      ),
    );
  }
}
