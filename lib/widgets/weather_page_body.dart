import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cubits/get_weather_cubit.dart';
import 'search_field.dart';
import 'weather_item.dart';

class WeatherPageBody extends StatelessWidget {
  const WeatherPageBody({super.key});

  @override
  Widget build(BuildContext context) {
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
        SearchField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
            getWeatherCubit.getWeather(value: value);
            Navigator.pop(context);
          },
          hint: 'Search for a city or airport',
          widget: const Icon(
            Icons.search,
            color: Color.fromRGBO(235, 235, 245, 0.6),
          ),
          //onSubmitted: (value) async {},
        ),
        const SizedBox(
          height: 32,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 32.0),
          child: WeatherItem(),
        )
      ]),
    );
  }
}
