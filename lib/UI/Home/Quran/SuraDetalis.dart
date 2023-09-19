import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

import 'VerseContect.dart';

class SuraDetalis extends StatefulWidget {
  static const String routeName = 'suradetalis';

  @override
  State<SuraDetalis> createState() => _SuraDetalisState();
}

class _SuraDetalisState extends State<SuraDetalis> {
  List<String> ayaContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    // To response the parameter
    var arg =
        ModalRoute.of(context)?.settings.arguments as suraDetalisScreenArgument;
    if (ayaContent.isEmpty) readFiles(arg.index);
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
            arg.title,
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
              child: Card(
                elevation: 27,
                margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: ayaContent.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Theme.of(context).accentColor,
                        strokeWidth: 4,
                      ))
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          return verseContent(ayaContent[index]);
                        },
                        itemCount: ayaContent.length,
                        separatorBuilder: (buildContext, index) {
                          return Container(
                            color: Theme.of(context).accentColor,
                            height: 1,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 60),
                            padding: EdgeInsets.symmetric(vertical: 20),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void readFiles(int characterIndex) async {
    // to read files
    await Future.delayed(Duration(seconds: 2));
    String text =
        await rootBundle.loadString('assets/files/${characterIndex + 1}.txt');
    ayaContent = text.split('\n');
    setState(() {});
  }
}

class suraDetalisScreenArgument {
  // data class
  String title;
  int index;

  suraDetalisScreenArgument(this.title, this.index);
}
