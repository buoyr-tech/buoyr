import 'package:buoyr/components/button.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class DesktopHero extends StatelessWidget {
  const DesktopHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableText(hero['title'], style: typography.headline1),
                SelectableText(hero['subtitle'], style: typography.subtitle1),
                SelectableText(
                  hero['description'],
                  style: typography.bodyText1,
                ),
                CustomButton(text: 'Apply now')
              ],
            ),
          ),
          Expanded(child: Image.asset(hero['image'])),
        ],
      ),
    );
  }
}
