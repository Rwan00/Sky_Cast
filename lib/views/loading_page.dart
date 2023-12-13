import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

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
          child: Image.asset(
                    "assets/images/H.png",
                    height: 410,
                    width: 610,
                  ),
        )
      ],
    );
  }
}
