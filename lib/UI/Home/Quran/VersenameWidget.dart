import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/Quran/SuraDetalis.dart';

class verseNameWidget extends StatelessWidget {
  String title;
  int index;

  verseNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetalis.routeName,
            arguments: suraDetalisScreenArgument(title, index));
      },
      child: Container(
          child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      )),
    );
  }
}
