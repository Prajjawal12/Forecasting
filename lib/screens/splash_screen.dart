import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forecasting/constants/text_constants.dart';
import 'package:forecasting/screens/home_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 13,
            ),
            GradientText(TextConstants.splashText,
                style: const TextStyle(
                    fontSize: 45.82, fontWeight: FontWeight.w900),
                gradientDirection: GradientDirection.ltr,
                gradientType: GradientType.linear,
                colors: const [
                  Color.fromARGB(255, 72, 179, 232),
                  Color.fromARGB(255, 74, 145, 255)
                ])
          ],
        ),
      ),
    );
  }
}
