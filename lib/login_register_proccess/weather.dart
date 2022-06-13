
import 'package:application_1/services/weather_service.dart';
import 'package:flutter/material.dart';

import '../models/weather_model.dart';


class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Weather();
}

class _Weather extends State<Weather> {
  final _cityTextController = TextEditingController();
  final _dataService = DataService();

   WeatherResponse? _response;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                if (_response != null)
                  Column(
                    children: [
                      Image.network(_response!.iconUrl.toString()),
                      Text(
                        '${(_response!.tempInfo.temperature.toString())}°',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(_response!.weatherInfo.description)
                    ],
                  ),
                Padding(
                  padding: EdgeInsets.only(top:50, bottom:5),
                  child: SizedBox(
                    width: 150,
                    child: TextField(
                        controller: _cityTextController,
                        decoration: InputDecoration(labelText: 'Şehir giriniz.'),
                        textAlign: TextAlign.center),
                  ),
                ),
                ElevatedButton(onPressed: _search, child: Text('Ara'))
              ],
            ),
          ),
        ));
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
  }
}