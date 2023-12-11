import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_state.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  getWeather({required String value}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getWeather(city: value);
      emit(WeatherSuccessState());
    } catch (error) {
      emit(WeatherErrorState(error.toString()));
    }
  }
}
