import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../models/weather_model.dart';

class HourlyItem extends StatefulWidget {
  final bool isTapped;
  final HourForecast hour;
  const HourlyItem({super.key, required this.isTapped,required this.hour});

  @override
  State<HourlyItem> createState() => _HourlyItemState();
}

class _HourlyItemState extends State<HourlyItem> {
  @override
  Widget build(BuildContext context) {
    String timeString = widget.hour.time;
DateTime dateTimeValue = DateTime.parse(timeString);
String formattedTime = DateFormat('hh a').format(dateTimeValue);
    return Container(
      width: 60,
      height: 146,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: widget.isTapped
            ? const LinearGradient(colors: [
                Color.fromRGBO(72, 49, 157, 1),
                Color.fromRGBO(72, 49, 157, 1),
              ])
            : const LinearGradient(
                colors: [
                  Color.fromRGBO(46, 51, 90, 0.7),
                  Color.fromRGBO(28, 27, 51, 0.7),
                ],
              ),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          formattedTime,
          style: GoogleFonts.aBeeZee(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Image.asset(
          "assets/images/Sun cloud mid rain.png",
          height: 30,
          width: 30,
        ),
        Text(
          "${widget.hour.avgTemp}°",
          style: GoogleFonts.aBeeZee(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        )
      ]),
    );
  }
}
