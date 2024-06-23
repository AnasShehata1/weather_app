// import 'package:weatherapp/models/weather_model.dart';

import 'package:weatherapp/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState({required WeatherModel? weatherModel});
}

class WeatherFailureState extends WeatherState {
  WeatherFailureState(String errorMessage);
}
