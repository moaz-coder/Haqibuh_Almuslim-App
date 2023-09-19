import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haqibuh_almuslim/UI/Home/Hadeth/HadethDataClass.dart';
import 'package:haqibuh_almuslim/UI/Home/Hadeth/HadethDetalis.dart';

import 'HadethTittleWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethDataClass> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) readHadethFiles();
    return Column(
      children: [
        Flexible(
          flex: 2,
          child: Image.asset("assets/images/hadeth_logo.png"),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).accentColor,
          margin: EdgeInsets.only(bottom: 10),
        ),
        Text(
          "Hadeth Number",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 2,
          color: Theme.of(context).accentColor,
        ),
        Expanded(
          flex: 3,
          child: allHadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).accentColor,
                  strokeWidth: 4,
                ))
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      color: Theme.of(context).accentColor,
                      height: 1,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      padding: EdgeInsets.symmetric(vertical: 20),
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              HadethDetalis.routeName,
                              arguments: allHadeth[index]);
                        },
                        child: HadethTittleWidget(allHadeth[index].tittle));
                  },
                  itemCount: allHadeth.length,
                ),
        ),
      ],
    );
  }

  void readHadethFiles() async {
    await Future.delayed(Duration(seconds: 3));
    List<HadethDataClass> list = [];
    String content = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> allHadethContent = content.split('#');

    for (int i = 0; i < allHadethContent.length; i++) {
      String singleHadethContent = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadethContent.indexOf("\n");
      String title = singleHadethContent.substring(0, indexOfFirstLine);
      String content = singleHadethContent.substring(indexOfFirstLine + 1);
      HadethDataClass hadeth = HadethDataClass(title, content);
      list.add(hadeth);
    }
    setState(() {
      allHadeth = list;
    });
  }
}
