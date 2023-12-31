import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_state.dart';
import 'package:weather_app/views/loading_page.dart';

import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit, WeatherStates>(builder: (context, state) {
        if (state is WeatherSuccessState) {
          return HomePageBody(
            weather: state.weatherModel,
          );
        } else {
          return const LoadingPage();
        }
      }),
    );
  }
}
