import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

Future networking() async{

  double latitude,longitude;
  String api ="657e46162d21f91b43cbeacbe9a4709f";
  Position position=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude=position.latitude;
    longitude=position.longitude;
    http.Response response=await http.get('https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&units=metric&exclude=hourly,minutely&appid=$api');
    if(response.statusCode==200){
      print(response.body);
      return response.body;
    }
    else
      print(response.statusCode);
}