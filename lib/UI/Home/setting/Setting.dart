import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/UI/Home/setting/ThemeBottomSheet.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: height * 0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Theme",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          InkWell(
            onTap: () {
              showBotttomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.02),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: width * 0.005,
                  ),
                ),
                child: Text(
                    provider.themeMode == ThemeMode.light ? "Light" : "Dark",
                    style: Theme.of(context).textTheme.bodyText2)),
          ),
        ],
      ),
    );
  }

  void showBotttomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => ThemeBottomSheet());
  }
}
