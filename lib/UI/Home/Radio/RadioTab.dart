import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/radio_image.png",
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Text("Quran Radio", style: Theme.of(context).textTheme.bodyText1),
        SizedBox(
          height: height * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_circle_left_rounded,
                color: Theme.of(context).accentColor, size: 30),
            Icon(
              Icons.play_arrow_sharp,
              color: Theme.of(context).accentColor,
              size: 60,
            ),
            Icon(Icons.arrow_circle_right_rounded,
                color: Theme.of(context).accentColor, size: 30),
          ],
        )
      ],
    );
  }
}
