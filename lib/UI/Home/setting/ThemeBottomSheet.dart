import 'package:flutter/material.dart';
import 'package:haqibuh_almuslim/providerTheme/ThemeProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: height * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.enableThemeLight();
            },
            child: provider.themeMode == ThemeMode.light
                ? getSelectedWidget("Light", context)
                : getSUnelectedWidget("Light", context),
          ),
          SizedBox(height: height * 0.01),
          InkWell(
            onTap: () {
              provider.enableThemeDark();
            },
            child: provider.themeMode == ThemeMode.dark
                ? getSelectedWidget("Dark", context)
                : getSUnelectedWidget("Dark", context),
          )
        ],
      ),
    );
  }

  Widget getSelectedWidget(String tittle, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tittle,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Theme.of(context).accentColor)),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  Widget getSUnelectedWidget(String tittle, BuildContext context) {
    return Text(tittle, style: Theme.of(context).textTheme.bodyText2);
  }
}
