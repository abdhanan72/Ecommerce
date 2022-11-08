
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animated_splash_screen/animated_splash_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:lottie/lottie.dart';

import '../Login/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    AnimatedSplashScreen(
      
      duration: 3000,
      splashIconSize: 40,
      splash: Lottie.asset('assets/shopping.json',
          width: 200, height: 400, fit: BoxFit.cover),

      nextScreen: const Login(),
      
    );
  }
}
