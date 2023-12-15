import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widgets/weather_item.dart';

import '../cubits/get_weather_cubit.dart';
import '../cubits/get_weather_state.dart';

import 'search_field.dart';

class WeatherPageBody extends StatelessWidget {
  const WeatherPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherStates>(builder: (context, state) {
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(46, 51, 90, 1),
              Color.fromRGBO(28, 27, 51, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(children: [
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                   var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
                  getWeatherCubit.getCurrentWeather();
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Color.fromRGBO(235, 235, 245, 0.6),
                ),
              ),
              Text(
                "Weather",
                style: GoogleFonts.aBeeZee(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              SearchField(
                onSubmitted: (value) async {
                  var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
                  getWeatherCubit.getWeather(value: value);
                },
                hint: 'Search for a city or airport',
                widget: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(235, 235, 245, 0.6),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              (state is WeatherSearchSuccessState)
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: WeatherItem(weather: state.weatherModel,),
                  )
                  :  Column(
                    children: [
                      const SizedBox(height: 280,),
                      Text("Search For City...",style:GoogleFonts.aBeeZee(
                        color: const Color.fromRGBO(235, 235, 245, 0.60),
                        fontWeight: FontWeight.w600,
                        fontSize: 20) ,),
                    ],
                  )
            ],
          )
        ]),
      );
    });
  }
}
