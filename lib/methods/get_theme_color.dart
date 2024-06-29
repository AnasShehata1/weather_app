
import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? weatherCondition) {
  if (weatherCondition == null) {
    return Colors.blue;
  }
  switch (weatherCondition) {
    case 'Sunny':
      return Colors.amber; 
    case 'Clear':
    case 'Partly cloudy':
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Light rain shower':
      return Colors.lightBlue;
    case 'Cloudy':
    case 'Overcast':
      return Colors.grey;
    case 'Patchy snow possible':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Light snow showers':
      return Colors.cyan; 
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Light sleet showers':
      return Colors.teal;
    case 'Patchy freezing drizzle possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
      return Colors.indigo; 
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple; 
    case 'Blowing snow':
    case 'Blizzard':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy snow showers':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey; 
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Moderate or heavy rain shower':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Torrential rain shower':
      return Colors.blue; 
    default:
      return Colors.blue; 
  }
}
