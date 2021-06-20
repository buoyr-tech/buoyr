import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String cardTitle;
  final String cardHighlight;
  final String cardDescription;
  final Widget cardAction;
  const SectionCard({
    Key? key,
    required this.cardTitle,
    required this.cardHighlight,
    required this.cardDescription,
    required this.cardAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    final color = CustomTheme().color;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 300.0,
      width: 450.0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectableText(
            cardTitle,
            style: typography.headline3.copyWith(
              color: color.blackColor,
              fontWeight: FontWeight.w100,
            ),
          ),
          SelectableText(
            cardHighlight,
            style: typography.headline2.copyWith(
              color: color.secondaryColor,
              fontWeight: FontWeight.w100,
            ),
            textAlign: TextAlign.center,
          ),
          SelectableText(
            cardDescription,
            style: typography.bodyText1.copyWith(color: color.blackColor),
            textAlign: TextAlign.center,
          ),
          cardAction,
        ],
      ),
    );
  }
}
