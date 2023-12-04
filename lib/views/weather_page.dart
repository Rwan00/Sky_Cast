import 'package:flutter/material.dart';

import '../widgets/weather_page_body.dart';


class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeatherPageBody(),
    );
  }
}
