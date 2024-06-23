import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_states.dart';
import '../cubits/get_weather_cubit/get_weather_cubit.dart';
import '../widgets/no_weather_info.dart';
import '../widgets/search_bar.dart';
import 'search_view.dart';
import '../widgets/weather_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: const CustomSearchBar(),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const SearchView();
                },
              ),
            );
          },
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoadedState) {
            // ignore: prefer_const_constructors
            return WeatherInfoBody();
          } else if (state is WeatherFailureState) {
            return const NoWeatherInfoBody();
          } else {
            return const NoWeatherInfoBody();
          }
        },
      ),
    );
  }
}
