import 'package:flutter/material.dart';

class Trader extends StatefulWidget {
  @override
  _TraderState createState() => _TraderState();
}

class _TraderState extends State<Trader> {
  Widget crops(){
    final List<String> crp=<String>['Wheat','Wheat','Cotton','Cotton'];
    final List<int> prs=<int>[450,460,1280,1300];
    final List<String> stat =['Punjab','Gujarat','Gujarat','Haryana'];

    return ListView.separated(padding: const EdgeInsets.all(8),
      itemCount: crp.length,
      itemBuilder: (BuildContext context, int index){
        return Row(
          children: [
            Expanded(child: Text(crp[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            Expanded(
            child:Text("${prs[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Expanded(child: Text(stat[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),))
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
      body:crops(),
    );
  }
}
