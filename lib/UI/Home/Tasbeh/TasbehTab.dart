import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int sebahaCounter = 0;
  double angle = 0;
  int tsbeehatCounter = 0;
  List<String> tsbeehatName = [
    'سبحان الله',
    'الحمدلله ',
    'الله اكبر',
    'لا اله الا الله',
    'لا حول ولا قوه الا بالله',
    'استغفرالله',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(left: width * 0.1),
                child: Image.asset(
                  "assets/images/head_sebha_logo.png",
                  height: height * 0.13,
                  width: width * 0.2,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.1),
                child: Transform.rotate(
                  angle: angle,
                  child: GestureDetector(
                    onTap: () {
                      tasbeeh();
                    },
                    child: Image.asset(
                      "assets/images/body_sebha_logo.png",
                      height: height * 0.27,
                      width: width * 0.7,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Text(
          "Tsbeehat Number",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Container(
          padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
              top: height * 0.02,
              bottom: height * 0.02),
          decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            sebahaCounter.toString(),
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24))),
          onPressed: () {
            tasbeeh();
          },
          child: Text(
            tsbeehatName[tsbeehatCounter],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  void tasbeeh() {
    if (sebahaCounter == 33) {
      sebahaCounter = 0;
      if (tsbeehatCounter == 5) {
        tsbeehatCounter = 0;
      } else {
        tsbeehatCounter++;
      }
    } else {
      sebahaCounter++;
    }
    angle += 15;
    setState(() {});
  }
}
