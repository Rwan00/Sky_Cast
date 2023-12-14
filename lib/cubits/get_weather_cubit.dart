import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_state.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  late WeatherModel weatherModel;

  static WeatherCubit get(context) => BlocProvider.of(context);

  getWeather({required String value}) async {
    try {
      weatherModel = await WeatherService(Dio()).getWeather(city: value);
      emit(WeatherSuccessState(weatherModel));
    } catch (error) {
      emit(WeatherErrorState(error.toString()));
      log("error");
    }
  }

  WeatherModel? weather;
  void getcurrentWeather() async {
    try {
      weather = await WeatherService(Dio()).getWeather(city: "Alexandria");
      emit(WeatherSuccessState(weather!));
    } catch (error) {
      emit(WeatherErrorState(error.toString()));
      log("error");
    }
  }
}
