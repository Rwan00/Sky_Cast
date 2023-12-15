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
  void getCurrentWeather() async {
    try {
      weather = await WeatherService(Dio()).getWeather(city: "Alexandria");
      emit(WeatherSuccessState(weather!));
    } catch (error) {
      emit(WeatherErrorState(error.toString()));
      log("error");
    }
  }
  List<dynamic> search = [];
  void getSearch(String value) {
    emit(WeatherSearchLoadingState());
    search = [];

    DioHelper.getData(
      url: "forecast.json",
      query: {"q": value, "apikey": "a3c2b22555e64609990135802230412"},
    ).then((value) {
      search = value!.data;
      emit(WeatherSearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(WeatherSearchErrorState(error.toString()));
    });
  }
}


class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://api.weatherapi.com/v1/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio?.get(url, queryParameters: query);
  }
}
