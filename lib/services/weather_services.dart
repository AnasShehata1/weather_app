import 'package:weatherapp/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices({required this.dio});
  String baseURL = 'https://api.weatherapi.com';
  String apiKey = '31debc5f99744a41933143500243105';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseURL/v1/forecast.json?key=$apiKey&q=$cityName&days=3');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Opps there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Opps there was an error, try later');
    }
  }
}
