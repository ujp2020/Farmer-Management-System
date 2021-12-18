import 'package:flutter/material.dart';
import 'info.dart';

// ignore: must_be_immutable
class Results extends StatefulWidget {
  Results({this.result,this.button});
  var result;
  var button;
  @override
  _ResultsState createState() => _ResultsState();
}



class _ResultsState extends State<Results> {
  var name,button;
  void initState(){
    super.initState();
    name=widget.result;
     button=widget.button;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:FutureBuilder(
        future: name,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return page(snapshot.data,button,context);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator());
        },
      ),

    );
  }
}

