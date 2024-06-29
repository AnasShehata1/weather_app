import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weatherapp/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weatherapp/database/create_database.dart';
import 'package:weatherapp/models/weather_model.dart';

import '../../services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  getWeather({required city}) async {
    try {
      weatherModel =
          await WeatherServices(dio: Dio()).getCurrentWeather(cityName: city);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailureState(e.toString()));
    }
  }

  void insertIntoDatatbase({required String city}) async {
    {
      try {
        await db!.rawInsert('INSERT INTO City(name) VALUES("$city")');
        log('inserted: $city');
        List<Map> cities = await db!.rawQuery('SELECT * FROM City');
        log('Cities: ');
        log(cities.toString());
      } catch (e) {
        log(e.toString());
      }
    }
  }

  void getDataFromDatabase() async {
    try {
      List<Map> cities = await db!.rawQuery('SELECT * FROM City');
      log('Cities: ');
      log(cities.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  void deleteDataFromDatabase({required int id}) async {
    try {
      await db!.rawDelete('DELETE FROM City WHERE id = ?', [id]);
      List<Map> cities = await db!.rawQuery('SELECT * FROM City');
      log('Cities: ');
      log(cities.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<int> numOfCities() async {
    int? count;
    // try {
      count = Sqflite.firstIntValue(
          await db!.rawQuery('SELECT COUNT(*) FROM City'));
      // log('count is :$count');
    // } catch (e) {
      // log(e.toString());
    // }
    return count ?? 0;
  }
}
