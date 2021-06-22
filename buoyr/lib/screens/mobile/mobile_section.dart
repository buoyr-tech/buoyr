import 'package:buoyr/components/button.dart';
import 'package:buoyr/components/section_card.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class MobileSection extends StatelessWidget {
  const MobileSection({Key? key}) : super(key: key);

  List<Expanded> buildSectionCards() {
    return section.map((item) {
      return Expanded(
        child: SectionCard(
          cardTitle: item['title'],
          cardHighlight: item['subtitle'],
          cardDescription: item['description'],
          cardAction: CustomButton(text: 'Apply now'),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText('Tuition', style: typography.headline3),
        SelectableText('Your future starts now.', style: typography.subtitle2),
        SizedBox(height: 50.0),
        
        Container(
          height: 800.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSectionCards()[0],
              SizedBox(height: 35.0),
              buildSectionCards()[1],
            ],
          ),
        )
      ],
    );
  }
}
