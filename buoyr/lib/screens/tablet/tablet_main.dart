import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class TabletMain extends StatelessWidget {
  const TabletMain({Key? key}) : super(key: key);

  List<Column> buildMainItem() {
    return mainData.map((item) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            item['title'],
            style: typography.headline3,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          SelectableText(
            item['subtitle'],
            style: typography.subtitle2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          SelectableText(
            item['description'],
            style: typography.bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SelectableText('This is how it works.', style: typography.headline2),
          ...buildMainItem(),
        ],
      ),
    );
  }
}
