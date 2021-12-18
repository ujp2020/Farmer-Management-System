import 'package:flutter/material.dart';

class Sell extends StatefulWidget {
  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5,),
          Text('Name: Vinodbhai Thumar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text('State: Gujarat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text("Crop: Wheat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text('Quantity: 30',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 5,),
          Text('Sell Price: 1300',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
