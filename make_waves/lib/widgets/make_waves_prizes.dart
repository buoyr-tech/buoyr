import 'package:flutter/material.dart';

import '../exports.dart';

class MakeWavesPrizes extends StatelessWidget {
  const MakeWavesPrizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText('Prizes', style: theme.subtitle()),
        SizedBox(height: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText('Winner Takes All', style: theme.caption()),
            SelectableText(
                '1. Full-tuition Scholarship to Buoyr School worth 80,000 pesos (per team).',
                style: theme.body()),
            SelectableText(
                '2. Mentorship Program for Strengths-Based Development in Project and Team Management worth 16,000 pesos by Soaring Strength.',
                style: theme.body()),
            SelectableText('3. 3 prototypes free from Invision for six months.',
                style: theme.body()),
            SelectableText(
                '4. Internship opportunity with DepEd Tayo Koronadal City.*',
                style: theme.body()),
            SizedBox(height: 20.0),
            SelectableText('Minor Awards', style: theme.caption()),
            SelectableText(
                '1. Full-tuition Scholarship to Buoyr School worth 80,000 pesos (per team).',
                style: theme.body()),
            SelectableText('2. Perks from our Affiliates and Partners.',
                style: theme.body()),
            SizedBox(height: 20.0),
            SelectableText(
                'For more information about our scholarship program, you can visit our website: https://buoyr.com/#/ ',
                style: theme.body()),
          ],
        ),
      ],
    );
  }
}
