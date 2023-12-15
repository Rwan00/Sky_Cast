import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../methods/get_img_condition.dart';
import '../models/weather_model.dart';

class WeatherItem extends StatefulWidget {
  final WeatherModel weather;
  const WeatherItem({required this.weather,super.key});

  @override
  State<WeatherItem> createState() => _WeatherItemState();
}

class _WeatherItemState extends State<WeatherItem> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutQuad, 
            transform: Matrix4.skew(isTapped ? 0.1 : 0, isTapped ? 0.1 : 0),
        child: Stack(
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
                    "${widget.weather.avgTemp}°",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 64,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "H:${widget.weather.maxTemp}° L:${widget.weather.minTemp}°",
                    style: GoogleFonts.aBeeZee(
                      color: const Color.fromRGBO(235, 235, 245, 0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "${widget.weather.city}, ${widget.weather.country}",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 80,),
                      Text(widget.weather.condition,style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w400,),)
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 70,
                left: 185,
                child: Image.asset(getImgCondition(widget.weather.condition))),
          ],
        ),
      ),
    );
  }
}
