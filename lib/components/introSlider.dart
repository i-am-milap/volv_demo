import 'package:flutter/material.dart';

class IntroSlider extends StatelessWidget {
  final String introBg;
  final String introTitle;
  final String introDescription;

  IntroSlider({
    required this.introBg,
    required this.introTitle,
    required this.introDescription,
  });

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(introBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.3,
              ),
              Text(
                introTitle,
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              SizedBox(
                width: _screenWidth / 1.8,
                child: Text(
                  introDescription,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
