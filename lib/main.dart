import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/views/home_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  useMaterial3: false,
                  primarySwatch: getThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.currentCondition),
                ),
                home: const HomePage(),
              );
            },
          );
        },
      ),
    );
  }
}

MaterialColor getThemeColor(String? weatherCondition) {
  if (weatherCondition == null) {
    return Colors.blue;
  }
  switch (weatherCondition) {
    case 'Sunny':
      return Colors.amber; // Amber color for sunny
    case 'Clear':
    case 'Partly cloudy':
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Light rain shower':
      return Colors.lightBlue; // Light blue for partly cloudy
    case 'Cloudy':
    case 'Overcast':
      return Colors.grey; // Grey for cloudy or overcast
    case 'Patchy snow possible':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Light snow showers':
      return Colors.cyan; // Cyan for snowy conditions
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Light sleet showers':
      return Colors.teal; // Teal for sleet conditions
    case 'Patchy freezing drizzle possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
      return Colors.indigo; // Indigo for drizzle conditions
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple; // Deep purple for thunderous conditions
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
      return Colors.blueGrey; // Blue grey for intense snow conditions
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Moderate or heavy rain shower':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Torrential rain shower':
      return Colors.blue; // Blue for heavy rain conditions
    // Add more cases as needed
    default:
      return Colors.blue; // Default color for unknown conditions
  }
}
