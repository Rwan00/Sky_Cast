import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with SingleTickerProviderStateMixin{

AnimationController? _controller;
  Animation<TextStyle>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = TextStyleTween(
            begin:  GoogleFonts.aBeeZee(color: Colors.blue,fontWeight: FontWeight.normal,fontSize: 25),
            end:  GoogleFonts.aBeeZee(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 85))
        .animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeInCirc,
    ));
  }

@override
void dispose() {
  _controller?.dispose();
  super.dispose();

}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/BG.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Transform.scale(
          scale: 0.8,
          child: AnimatedBuilder(
            animation: _controller!,  
            builder: (ctx,child) =>  Transform.rotate(angle: _controller!.value * 2 * pi,child: child),
          child: Center(
        child: DefaultTextStyleTransition(
          style: _animation!,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Text("Loading...")
          ),
        ),
      ),
        ),)
      ],
    );
  }
}
