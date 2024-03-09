import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forecasting/components/onboarding_container.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double originalHeight = 483;
    const double originalWidth = 644;

    const double aspectRatio = originalHeight / originalWidth;
    final screenWidth = MediaQuery.of(context).size.width;
    final double imageHeight = screenWidth * aspectRatio;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 71, 191, 223),
            Color.fromARGB(255, 74, 145, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/png/World.png',
                height: imageHeight,
                width: screenWidth,
                fit: BoxFit.fill,
              ),
            ),
            const OnboardingContainer()
          ],
        ),
      ),
    );
  }
}
