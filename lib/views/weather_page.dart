import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromRGBO(46, 51, 90, 1), Color.fromRGBO(28, 27, 51, 1)], 
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
      ),
    ));
  }
}