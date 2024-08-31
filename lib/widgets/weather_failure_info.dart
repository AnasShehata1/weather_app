import 'package:flutter/material.dart';
import 'package:weatherapp/helper/get_theme_color.dart';

class WeatherFailureInfo extends StatelessWidget {
  const WeatherFailureInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [getThemeColor(null), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text('There was an error, try again later!'),
        ),
      ),
    );
  }
}
