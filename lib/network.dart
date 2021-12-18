import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future getUploadImg(File image,String button) async {
  String appleUrl = 'https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/4d8091f0-6d95-44b6-8cb8-d08c7790cfb7/classify/iterations/Iteration4/image';
  String tomatoUrl = 'https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/895dd95e-39ac-436f-b70f-87dfb89dd302/classify/iterations/Iteration1/image';
  String strawberryUrl = 'https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/125587d9-b13e-4dfd-81f6-29445594aee4/classify/iterations/Iteration1/image';
  String cornUrl = 'https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/1f8834b6-28b4-48ce-ac0b-af2dbfbcaafd/classify/iterations/Iteration1/image';
  String potatoUrl='https://centralindia.api.cognitive.microsoft.com/customvision/v3.0/Prediction/f360b59c-ac4b-4d0a-a453-87483aa25321/classify/iterations/Iteration1/image';
  String apiUrl;
  switch(button)
  {
    case "Apple":
      apiUrl=appleUrl;
      break;
    case "Tomato":
      apiUrl=tomatoUrl;
      break;
    case "Strawberry":
      apiUrl=strawberryUrl;
      break;
    case "Corn":
      apiUrl=cornUrl;
      break;
    case "Potato":
      apiUrl=potatoUrl;
      break;
  }

  final length = await image.length();
  final Map<String, String> headers = {
    "Prediction-Key": '9d9b71af15ec4a8bb89c54ff8f0c0be6',
    "Content-Type": "application/octet-stream"
  };
  final request = new http.MultipartRequest('POST', Uri.parse(apiUrl));
  request.headers.addAll(headers);
  request.files.add(new http.MultipartFile('avatar', image.openRead(), length));
  http.Response response = await http.Response.fromStream(await request.send());
  String data = response.body;
  print(response.statusCode);
  print(response.body);
  return json.decode(data)['predictions'][0]['tagName'];
}
