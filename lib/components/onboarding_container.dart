import 'package:flutter/material.dart';
import 'package:forecasting/constants/text_constants.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        height: 350,
        width: 361,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Text(
                TextConstants.onboardingTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 84, left: 24, right: 24),
              child: Text(
                TextConstants.onboardingText,
                style: TextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 189, left: 43, right: 43),
              child: SizedBox(
                width: 264,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0, // Remove elevation
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 71, 191, 223),
                          Color.fromARGB(255, 74, 145, 255),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        TextConstants.onboardingButtonText,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 299, left: 66.5, right: 66.5),
              child: SizedBox(
                width: 175,
                height: 17,
                child: Text(TextConstants.onboardingBelowButtonText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 284, left: 235),
              child: TextButton(
                  onPressed: () {
                    print('Button Pressed');
                  },
                  child: const Text('Log In')),
            )
          ],
        ),
      ),
    );
  }
}
