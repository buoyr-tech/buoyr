import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 300.0,
      width: 450.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SelectableText(
            cardTitle,
            style: GoogleFonts.getFont(
              'Montserrat',
              fontSize: 24.0,
              color: color.secondaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          SelectableText(
            cardHighlight,
            style: typography.headline2.copyWith(
              fontWeight: FontWeight.w100,
              color: color.primaryColor,
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
