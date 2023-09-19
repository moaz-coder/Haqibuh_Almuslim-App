import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/HomeScreen.dart';
import 'package:haqibuh_almuslim/UI/Home/Quran/SuraDetalis.dart';
import 'package:haqibuh_almuslim/UI/Splash_Screen/splashScreen.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

import 'UI/Home/Hadeth/HadethDetalis.dart';
import 'UI/my-Theme/myTheme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => ThemeProvider(), child: Haqibuh_Almuslim()));
}

class Haqibuh_Almuslim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: provider.themeMode,
      initialRoute: splashScreen.routName,
      routes: {
        splashScreen.routName: (buildContext) => splashScreen(),
        HomeScreen.routName: (buildContext) => HomeScreen(),
        SuraDetalis.routeName: (buildContext) => SuraDetalis(),
        HadethDetalis.routeName: (buildContext) => HadethDetalis(),
      },
    );
  }
}
