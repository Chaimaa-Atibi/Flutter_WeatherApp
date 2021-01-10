import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WeatherDetail extends StatefulWidget {
  String city = "";
  WeatherDetail(this.city);
  @override
  _WeatherDeatilState createState() => _WeatherDeatilState();
}

class _WeatherDeatilState extends State<WeatherDetail> {
  var weatherData;

  @override
  void initState() {
    super.initState();
    getData(widget.city);
  }

  getData(String city) {
    print("getting weather of" + city);
    String url =
        "http://api.openweathermap.org/data/2.5/forecast?q=${city}&APPID=7674d4cf794d7402e85b42b376d9e197";
    http.get(url).then((resp) {
      setState(() {
        this.weatherData = json.decode(resp.body);
        print(this.weatherData);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather of ${widget.city}'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: (weatherData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount:
                    (weatherData == null ? 0 : weatherData['list'].length),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "Images/${weatherData['list'][index]['weather'][0]['main'].toString().toLowerCase()}.png"),
                          ),
                          Text(
                            "${new DateFormat('E-dd/MM/yyyy').format(DateTime.fromMillisecondsSinceEpoch(weatherData['list'][index]['dt']))*10^6})",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "${weatherData['list'][index]['main']['temp']}",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  );
                })));
  }
}
