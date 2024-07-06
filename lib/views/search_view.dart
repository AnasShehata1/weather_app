import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: TextField(
          onSubmitted: (city) async {
            getWeatherCubit.getWeather(city: city);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Color.fromARGB(255, 255, 255, 255)),
          cursorColor: Colors.white,
        ),
      ),
    );
  }
}
