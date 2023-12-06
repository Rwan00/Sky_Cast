import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_state.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(initialState) : super(initialState);

  getWeather({required String value})async{
    WeatherModel weatherModel =
                await WeatherService(Dio()).getWeather(city: value);
            log(weatherModel.condition);
  }
}
