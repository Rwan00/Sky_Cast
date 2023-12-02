import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HourltItem extends StatelessWidget {
  const HourltItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 146,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(46, 51, 90, 0.7),
            Color.fromRGBO(28, 27, 51, 0.7),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Text("12 AM",style: GoogleFonts.aBeeZee(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),),
        Image.asset("assets/images/Sun cloud mid rain.png",height: 30,width: 30,),
        Text("19°",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize:20 ,fontWeight: FontWeight.w400),)
      ]),
    );
  }
}
