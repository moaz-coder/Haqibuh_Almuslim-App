import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/Hadeth/HadethDataClass.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

class HadethDetalis extends StatelessWidget {
  static const String routeName = 'hadethDeatils';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);

    var arg = ModalRoute.of(context)?.settings.arguments as HadethDataClass;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getBackgroundImage()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            arg.tittle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 27,
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              arg.tittle,
                              style: TextStyle(fontSize: 29),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Divider(
                                thickness: 1.5,
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            Text(
                              arg.contect,
                              textDirection: TextDirection.rtl,
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
