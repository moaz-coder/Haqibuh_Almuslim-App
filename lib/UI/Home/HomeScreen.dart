import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/Hadeth/HadethTab.dart';
import 'package:haqibuh_almuslim/UI/Home/Quran/quranTab.dart';
import 'package:haqibuh_almuslim/UI/Home/Radio/RadioTab.dart';
import 'package:haqibuh_almuslim/UI/Home/Tasbeh/TasbehTab.dart';
import 'package:haqibuh_almuslim/UI/Home/setting/Setting.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getBackgroundImage()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Haqibuh Almuslim",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: 'Sebha'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: 'Setting'),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    quranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    Setting(),
  ];
}
