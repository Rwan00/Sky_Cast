import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../methods/nav_method.dart';
import '../views/weather_page.dart';
import 'hourly_item.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  Text(
                    "H:24° L:18°",
                    style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
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
                                const SizedBox(
                                  height: 24,
                                ),
                                generateList(),
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
                                  Stack(children: [
                                    Image.asset("assets/images/Subtract.png"),
                                    Positioned(
                                      top: 11,
                                      left: 99,
                                      child: GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context, const WeatherPage());
                                        },
                                        child: SvgPicture.asset(
                                          "assets/images/Ellipse 1.svg",
                                          height: 65,
                                          width: 65,
                                          semanticsLabel: "Task",
                                          colorFilter: const ColorFilter.mode(
                                              Colors.white, BlendMode.dst),
                                        ),
                                      ),
                                    ),
                                  ]),

                                  //SizedBox(width: 200,),
                                  Image.asset("assets/images/List.png"),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
    );
  }

  SingleChildScrollView generateList() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            24,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: HourlyItem(
                  isTapped: selectedIndex == index ? true : false,
                ),
              ),
            ),
          ),
        ));
  }
}
