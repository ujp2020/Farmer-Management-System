import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Price extends StatefulWidget {
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  Widget pricedata(){
    final List<String> crop = <String>['Wheat','Cotton','Ground nuts','Corn'];
    final List<int> prices=<int>[550,1347,1054,453];
    final List<IconData>see =<IconData>[FontAwesomeIcons.arrowDown,FontAwesomeIcons.arrowUp,FontAwesomeIcons.arrowDown,FontAwesomeIcons.arrowUp];
    final List<Color>col =<Color>[Colors.red,Colors.green,Colors.red,Colors.green];

    return ListView.separated(padding: const EdgeInsets.all(8),
        itemCount: crop.length,
        itemBuilder: (BuildContext context, int index){
          return Row(
            children: [
              Expanded(flex:3,child: Text(crop[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              Expanded(flex:1,child: Row(
                children: [
                  Text("${prices[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(see[index],size: 20,color:col[index] ,)
                ],
              ))
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
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
      body: pricedata(),
    );
  }
}
