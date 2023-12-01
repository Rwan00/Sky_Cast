import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/BG.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Center(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 90,),
                    Text(
                      "Montreal",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Text(
                      "19°",
                      style: GoogleFonts.aBeeZee(
                        fontSize: 86,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Mostly Clear",
                      style: GoogleFonts.aBeeZee(
                          color: const Color.fromRGBO(235, 235, 245, 0.60),
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("H:24°",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(width: 10,),
                        Text("L:18°",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    )
                  ],
                ),
                //SizedBox(height: 20,),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/H.png",
                      height: 510,
                      width: 610,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 303),
                      child: Container(
                        //width: double.infinity,
                        height: 290,
                        decoration:  const BoxDecoration(
                       gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(46, 51, 90, 0.9),
                            Color.fromRGBO(28, 27, 51, 1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          tileMode: TileMode.mirror
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
