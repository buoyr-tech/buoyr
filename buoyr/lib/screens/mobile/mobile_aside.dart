import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class MobileAside extends StatelessWidget {
  const MobileAside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SelectableText(
            'Our Partners',
            style: typography.headline3,
          ),
          SelectableText(
            'Work with software companies and agencies.',
            style: typography.subtitle2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
