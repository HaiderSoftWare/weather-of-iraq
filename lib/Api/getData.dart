import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Model/weather.dart';

Future<Weather> GetDataFromApi(String link) async {
  //
  http.Response response = await http.get(Uri.parse(link));

  if (response.statusCode == 200) {
    return Weather.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Erorr');
  }
}
