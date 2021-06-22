import 'package:buoyr/components/button.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class MobileHero extends StatelessWidget {
  const MobileHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            hero['title'],
            style: typography.headline3,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            hero['subtitle'],
            style: typography.subtitle2,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            hero['description'],
            style: typography.bodyText2,
            textAlign: TextAlign.center,
          ),
          CustomButton(text: 'Apply now')
        ],
      ),
    );
  }
}
