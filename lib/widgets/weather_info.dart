import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/methods/get_theme_color.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/widgets/forecast_day.dart';
import 'hour_forecast.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    // WeatherModel weatherModel =
    //     BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getThemeColor(weatherModel.currentCondition),
              getThemeColor(weatherModel.currentCondition)[500]!,
              getThemeColor(weatherModel.currentCondition)[400]!,
              getThemeColor(weatherModel.currentCondition)[300]!,
              getThemeColor(weatherModel.currentCondition)[200]!,
              getThemeColor(weatherModel.currentCondition)[100]!,
              // getThemeColor(weatherModel.currentCondition)[50]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https:${weatherModel.currentConditionIcon}'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Text(
              weatherModel.currentCondition,
              style: const TextStyle(fontSize: 28, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${weatherModel.currentTemp.round()} \u00b0',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Last updated : ${weatherModel.updatedAt.substring(11)}',
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ForecastDay(
                  day: 'Tomorrow',
                  avg: weatherModel.tomorrowTemp,
                  min: weatherModel.tomorrowMinTemp,
                  max: weatherModel.tomorrowMaxTemp,
                  conditionIcon: weatherModel.tomorrowConditionIcon,
                  condition: weatherModel.tomorrowCondition,
                ),
                ForecastDay(
                  day: 'After Tomorrow',
                  avg: weatherModel.afterTomorrowTemp,
                  min: weatherModel.afterTomorrowMinTemp,
                  max: weatherModel.afterTomorrowMaxTemp,
                  conditionIcon: weatherModel.afterTomorrowConditionIcon,
                  condition: weatherModel.afterTomorrowCondition,
                ),
              ],
            ),
            const Spacer(
              flex: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HourForecast(
                  time: '9 AM',
                  conditionIcon: weatherModel.weatherCondIconAt9am,
                  temp: weatherModel.weatherCondTempAt9am,
                ),
                HourForecast(
                  time: '12 PM',
                  conditionIcon: weatherModel.weatherCondIconAt12pm,
                  temp: weatherModel.weatherCondTempAt12pm,
                ),
                HourForecast(
                  time: '3 PM',
                  conditionIcon: weatherModel.weatherCondIconAt3pm,
                  temp: weatherModel.weatherCondTempAt3pm,
                ),
                HourForecast(
                  time: '6 PM',
                  conditionIcon: weatherModel.weatherCondIconAt6pm,
                  temp: weatherModel.weatherCondTempAt6pm,
                ),
                HourForecast(
                  time: '9 PM',
                  conditionIcon: weatherModel.weatherCondIconAt9pm,
                  temp: weatherModel.weatherCondTempAt9pm,
                ),
              ],
            ),
            const Spacer(
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
