import 'package:flutter/material.dart';
import 'package:jetkir/modules/splash/splash_two_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SplashTwoScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8A00FF),
      body: Center(
        child: Image.asset(
          'assets/image/white_logo.png',
          width: 180,
        ),
      ),
    );
  }
}
