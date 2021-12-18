import 'package:flutter/material.dart';

class Medicine extends StatefulWidget {
  @override
  _MedicineState createState() => _MedicineState();
}

class _MedicineState extends State<Medicine> {
  Widget givemedicine(String img, String name,String rup){
    return Row(
      children: [
        Expanded(
            child:Image(image: AssetImage('images/$img'))
        ),
        Expanded(child: Center(child: Text("$name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))),
        Expanded(child: Center(child: Text("$rup"+"Rs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))),
        Expanded(child: Container(
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
          givemedicine("applescab_1.jpg","Merivon","200" ),
          givemedicine("sp_1.jpg","Spray Pump","5200" ),
          givemedicine("sp_2.jpg","Spray Pump","5500" ),
          givemedicine("buy22.jpg","Water Pump","7500" ),
          givemedicine("dap_1.jpg","Fertilizer","3300" ),
          givemedicine("applescab_6.jpg", "Sercadis","350"),
          givemedicine("applescab_5.jpg", "Acrisio","400")
        ],
      ),
    );
  }
}