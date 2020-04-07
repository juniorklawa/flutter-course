import 'dart:convert';
import 'package:flutter/material.dart';

import '../services/location.dart';
import '../services/networking.dart';
import '../services/networking.dart';

const apiKey = '4afa87f78850b1bb173e07c791a09750';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();

    // Navigator.push(context, route);
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
