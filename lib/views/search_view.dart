import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: TextField(
          onSubmitted: (city) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(city: city);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
              hintText: 'Search...',
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Text('egypt'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
