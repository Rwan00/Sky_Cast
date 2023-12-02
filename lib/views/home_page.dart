import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';

import '../widgets/hourly_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/BG.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
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
                        Text(
                          "H:24°",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "L:18°",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                //SizedBox(height: 20,),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/H.png",
                      height: 410,
                      width: 610,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 240),
                      child: Container(
                        width: double.infinity,
                        height: 353,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(46, 51, 90, 0.9),
                                Color.fromRGBO(28, 27, 51, 1),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              tileMode: TileMode.mirror),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40)),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Column(children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Flexible(
                                    child: Container(
                                      height: 6,
                                      width: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Hourly Forecast",
                                        style: GoogleFonts.aBeeZee(
                                          color: const Color.fromRGBO(
                                              235, 235, 245, 0.6),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "Weekly Forecast",
                                        style: GoogleFonts.aBeeZee(
                                          color: const Color.fromRGBO(
                                              235, 235, 245, 0.6),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 3,
                                    width: 390,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 0),
                                            Color.fromRGBO(255, 255, 255, 1),
                                            Color.fromRGBO(255, 255, 255, 0),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          tileMode: TileMode.mirror),
                                    ),
                                  ),
                                  Wrap(
                                    children: List.generate(
                                      4,
                                      (index) => GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _selectedIndex = index;
                                          });
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 8),
                                            child: HourltItem(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            Stack(
                                //fit: StackFit.expand,
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset(
                                    "assets/images/bottom.png",
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset("assets/images/Hover.png"),
                                      Positioned(
                                          top: 200,
                                          child: Stack(children: [
                                            Image.asset(
                                                "assets/images/Subtract.png"),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Positioned(
                                                top: 11,
                                                left: 99,
                                                child: SvgPicture.asset(
                                                  "assets/images/Ellipse 1.svg",
                                                  height: 65,
                                                  width: 65,
                                                  semanticsLabel: "Task",
                                                  colorFilter: const ColorFilter.mode(
                                                      Colors.white,
                                                      BlendMode.dst),
                                                ),
                                              ),
                                            ),
                                          ])),

                                      //SizedBox(width: 200,),
                                      Image.asset("assets/images/List.png"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  )
                                ]),
                          ],
                        ),
                      ),
                    ),
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
