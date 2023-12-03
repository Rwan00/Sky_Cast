import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          "assets/images/weather.png",
          height: 210,
          width: 360,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Text(
                "19°",
                style: GoogleFonts.aBeeZee(
                    fontSize: 64,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "H:24° L:18°",
                style: GoogleFonts.aBeeZee(
                  color: const Color.fromRGBO(235, 235, 245, 0.6),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Montreal, Canada",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 80,),
                  Text("Mid Rain",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400,),)
                ],
              )
            ],
          ),
        ),
        Positioned(
            bottom: 70,
            left: 185,
            child: Image.asset("assets/images/Moon cloud mid rain.png")),
      ],
    );
  }
}
