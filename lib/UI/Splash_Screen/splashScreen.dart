import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/HomeScreen.dart';
import 'package:provider/provider.dart';

import '../../providerTheme/ThemeProvider.dart';

class splashScreen extends StatelessWidget {
  static const String routName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    Future.delayed(Duration(seconds: 3), // Timer for Splash
        () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            provider.themeMode == ThemeMode.light
                ? "assets/images/splashscreen.png"
                : "assets/images/logo.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
