import 'package:buoyr/components/button.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class TabletHero extends StatelessWidget {
  const TabletHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            hero['title'],
            style: typography.headline1,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            hero['subtitle'],
            style: typography.subtitle1,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            hero['description'],
            style: typography.bodyText1,
            textAlign: TextAlign.center,
          ),
          CustomButton(text: 'Apply now')
        ],
      ),
    );
  }
}
