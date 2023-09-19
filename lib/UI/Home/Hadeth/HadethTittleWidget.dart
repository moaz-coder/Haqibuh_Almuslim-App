import 'package:flutter/material.dart';

class HadethTittleWidget extends StatelessWidget {
  String tittle;

  HadethTittleWidget(this.tittle);

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.center,
    );
  }
}
