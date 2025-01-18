import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, 
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Weather Info'),
        backgroundColor: Colors.blue[100], // AppBar arka plan rengi
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wb_sunny,
              size: 100,
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            Text(
              'City: Istanbul',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Temperature: 26°C',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Condition: Sunny',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            Text(
              'Hourly Forecast',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  hourlyForecast('00:00', '20°C'),
                  hourlyForecast('03:00', '18°C'),
                  hourlyForecast('06:00', '17°C'),
                  hourlyForecast('09:00', '19°C'),
                  hourlyForecast('12:00', '22°C'),
                  hourlyForecast('15:00', '24°C'),
                  hourlyForecast('18:00', '23°C'),
                  hourlyForecast('21:00', '21°C'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hourlyForecast(String time, String temperature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            temperature,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
