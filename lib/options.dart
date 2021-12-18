import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  Options({this.crop,this.color,this.c1,this.c2});
  final String crop;
  final Color color,c1,c2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(

          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: [c1, c2],
            tileMode: TileMode.repeated,
          ),
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2))
          ]),
      child: Center(
        child: Text(
          crop,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
