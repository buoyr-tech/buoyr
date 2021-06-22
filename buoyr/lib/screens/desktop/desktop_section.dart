import 'package:buoyr/components/button.dart';
import 'package:buoyr/components/section_card.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class DesktopSection extends StatelessWidget {
  const DesktopSection({Key? key}) : super(key: key);

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
        SelectableText('Tuition', style: typography.headline2),
        SelectableText('Your future starts now.', style: typography.subtitle1),
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildSectionCards()[0],
            SizedBox(width: 75.0),
            buildSectionCards()[1],
          ],
        )
      ],
    );
  }
}
