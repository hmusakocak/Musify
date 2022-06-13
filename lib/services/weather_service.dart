import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {

    // api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameters = {
      'q': city,
      'appid': 'b5b67b47106981fa4d5eafe5b6926556',
      'units': 'metric'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    //print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}