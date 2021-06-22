import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class MobileMain extends StatelessWidget {
  const MobileMain({Key? key}) : super(key: key);

  List<Column> buildMainItem() {
    return mainData.map((item) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            item['title'],
            style: typography.headline4,
          ),
          SizedBox(height: 10.0),
          SelectableText(
            item['subtitle'],
            style: typography.subtitle2,
          ),
          SizedBox(height: 10.0),
          SelectableText(
            item['description'],
            style: typography.bodyText2,
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SelectableText('This is how it works.', style: typography.headline3),
          ...buildMainItem(),
        ],
      ),
    );
  }
}
