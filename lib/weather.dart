import 'dart:convert';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:charcode/charcode.dart';

class Weather extends StatefulWidget {
  Weather({this.weather});
  final weather;
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String week(var days) {
    String day;
    switch (days) {
      case 7:
        day = 'Sunday';
        break;
      case 1:
        day = 'Monday';
        break;
      case 2:
        day = 'Tuesday';
        break;
      case 3:
        day = 'Wednesday';
        break;
      case 4:
        day = 'Thursday';
        break;
      case 5:
        day = 'Friday';
        break;
      case 6:
        day = 'Saturday';
        break;
    }
    return day;
  }

  Widget sky(var skydata) {
    DateTime dates;

    final List<String> icon = <String>[];
    final List<String> condition = <String>[];
    final List<int> min = <int>[];
    final List<int> max = <int>[];
    final List<DateTime> date = <DateTime>[];
    final List<int> humidity = <int>[];
    final List<String> dayweek = <String>[];
    final List<String> disc = <String>[];

    for (int i = 0; i < 8; i++) {
      icon.add(json.decode(skydata)['daily'][i]['weather'][0]['icon']);
      condition.add(json.decode(skydata)['daily'][i]['weather'][0]['main']);
      disc.add(json.decode(skydata)['daily'][i]['weather'][0]['description']);
      min.add((json.decode(skydata)['daily'][i]['temp']['min']).toInt());
      max.add((json.decode(skydata)['daily'][i]['temp']['max']).toInt());
      dates = new DateTime.fromMillisecondsSinceEpoch(
          (json.decode(skydata)['daily'][i]['dt']) * 1000);
      dayweek.add(week(dates.weekday));
      date.add(dates);
      humidity.add(json.decode(skydata)['daily'][i]['humidity']);
    }

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: icon.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    "${date[index].day}/${date[index].month}",
                    style: TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    dayweek[index],
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.network(
                      "http://openweathermap.org/img/wn/${icon[index]}@2x.png"),
                  Text(
                    condition[index],
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                disc[index],
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("max: ${max[index]}" +
                      String.fromCharCode(0x00B0) +
                      " " +
                      String.fromCharCode(0x2191)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("min: ${min[index]}" +
                      String.fromCharCode(0x00B0) +
                      " " +
                      String.fromCharCode(0x2193)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("humidity: ${humidity[index]}%"),
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  var skydata;
  @override
  void initState() {
    super.initState();
    skydata = widget.weather;
  }

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
        body: FutureBuilder(
          future: skydata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return sky(snapshot.data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
