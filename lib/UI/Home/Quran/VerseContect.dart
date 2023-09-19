import 'package:flutter/material.dart';

class verseContent extends StatelessWidget {
  String Content;

  verseContent(this.Content);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      Content,
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
    ));
  }
}
