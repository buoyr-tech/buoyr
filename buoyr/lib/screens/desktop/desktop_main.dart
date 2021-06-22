import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class DesktopMain extends StatelessWidget {
  const DesktopMain({Key? key}) : super(key: key);

  List<Row> buildMainItem() {
    return mainData.map((item) {
      return Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(item['title'], style: typography.headline3),
                SizedBox(height: 10.0),
                SelectableText(item['subtitle'], style: typography.subtitle2),
                SizedBox(height: 10.0),
                SelectableText(item['description'],
                    style: typography.bodyText1),
              ],
            ),
          ),
          Expanded(
            child: Align(
              child: Image.asset(item['image']),
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000.0,
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
