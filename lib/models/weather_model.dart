
class WeatherModel {
  String cityName;
  String updatedAt;
  String currentConditionIcon;
  String currentCondition;
  double currentTemp;
  double todayMinTemp;
  double todayMaxTemp;
  double tomorrowTemp;
  double tomorrowMinTemp;
  double tomorrowMaxTemp;
  String tomorrowCondition;
  String tomorrowConditionIcon;
  double afterTomorrowTemp;
  double afterTomorrowMinTemp;
  double afterTomorrowMaxTemp;
  String afterTomorrowCondition;
  String afterTomorrowConditionIcon;
  String weatherCondAt9am;
  String weatherCondIconAt9am;
  double weatherCondTempAt9am;
  String weatherCondAt12pm;
  String weatherCondIconAt12pm;
  double weatherCondTempAt12pm;
  String weatherCondAt3pm;
  String weatherCondIconAt3pm;
  double weatherCondTempAt3pm;
  String weatherCondAt6pm;
  String weatherCondIconAt6pm;
  double weatherCondTempAt6pm;
  String weatherCondAt9pm;
  String weatherCondIconAt9pm;
  double weatherCondTempAt9pm;

  WeatherModel({
    required this.cityName,
    required this.updatedAt,
    required this.currentConditionIcon,
    required this.currentCondition,
    required this.currentTemp,
    required this.todayMinTemp,
    required this.todayMaxTemp,
    required this.tomorrowTemp,
    required this.tomorrowMinTemp,
    required this.tomorrowMaxTemp,
    required this.tomorrowCondition,
    required this.tomorrowConditionIcon,
    required this.afterTomorrowTemp,
    required this.afterTomorrowMinTemp,
    required this.afterTomorrowMaxTemp,
    required this.afterTomorrowCondition,
    required this.afterTomorrowConditionIcon,
    required this.weatherCondAt9am,
    required this.weatherCondIconAt9am,
    required this.weatherCondTempAt9am,
    required this.weatherCondAt12pm,
    required this.weatherCondIconAt12pm,
    required this.weatherCondTempAt12pm,
    required this.weatherCondAt3pm,
    required this.weatherCondIconAt3pm,
    required this.weatherCondTempAt3pm,
    required this.weatherCondAt6pm,
    required this.weatherCondIconAt6pm,
    required this.weatherCondTempAt6pm,
    required this.weatherCondAt9pm,
    required this.weatherCondIconAt9pm,
    required this.weatherCondTempAt9pm,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      updatedAt: json['current']['last_updated'],
      currentConditionIcon: json['current']['condition']['icon'],
      currentCondition: json['current']['condition']['text'],
      currentTemp: json['current']['temp_c'],
      todayMinTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      todayMaxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      tomorrowTemp: json['forecast']['forecastday'][1]['day']['avgtemp_c'],
      tomorrowMinTemp: json['forecast']['forecastday'][1]['day']['mintemp_c'],
      tomorrowMaxTemp: json['forecast']['forecastday'][1]['day']['maxtemp_c'],
      tomorrowCondition: json['forecast']['forecastday'][1]['day']['condition']
          ['text'],
      tomorrowConditionIcon: json['forecast']['forecastday'][1]['day']
          ['condition']['icon'],
      afterTomorrowTemp: json['forecast']['forecastday'][2]['day']['avgtemp_c'],
      afterTomorrowMinTemp: json['forecast']['forecastday'][2]['day']
          ['mintemp_c'],
      afterTomorrowMaxTemp: json['forecast']['forecastday'][2]['day']
          ['maxtemp_c'],
      afterTomorrowCondition: json['forecast']['forecastday'][2]['day']
          ['condition']['text'],
      afterTomorrowConditionIcon: json['forecast']['forecastday'][2]['day']
          ['condition']['icon'],
      weatherCondAt9am: json['forecast']['forecastday'][0]['hour'][9]
          ['condition']['text'],
      weatherCondIconAt9am: json['forecast']['forecastday'][0]['hour'][9]
          ['condition']['icon'],
      weatherCondTempAt9am: json['forecast']['forecastday'][0]['hour'][9]
          ['temp_c'],
      weatherCondAt12pm: json['forecast']['forecastday'][0]['hour'][12]
          ['condition']['text'],
      weatherCondIconAt12pm: json['forecast']['forecastday'][0]['hour'][12]
          ['condition']['icon'],
      weatherCondTempAt12pm: json['forecast']['forecastday'][0]['hour'][12]
          ['temp_c'],
      weatherCondAt3pm: json['forecast']['forecastday'][0]['hour'][15]
          ['condition']['text'],
      weatherCondIconAt3pm: json['forecast']['forecastday'][0]['hour'][15]
          ['condition']['icon'],
      weatherCondTempAt3pm: json['forecast']['forecastday'][0]['hour'][15]
          ['temp_c'],
      weatherCondAt6pm: json['forecast']['forecastday'][0]['hour'][18]
          ['condition']['text'],
      weatherCondIconAt6pm: json['forecast']['forecastday'][0]['hour'][18]
          ['condition']['icon'],
      weatherCondTempAt6pm: json['forecast']['forecastday'][0]['hour'][18]
          ['temp_c'],
      weatherCondAt9pm: json['forecast']['forecastday'][0]['hour'][21]
          ['condition']['text'],
      weatherCondIconAt9pm: json['forecast']['forecastday'][0]['hour'][21]
          ['condition']['icon'],
      weatherCondTempAt9pm: json['forecast']['forecastday'][0]['hour'][21]
          ['temp_c'],
    );
  }
}
