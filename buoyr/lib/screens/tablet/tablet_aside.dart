import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class TabletAside extends StatelessWidget {
  const TabletAside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SelectableText(
            'Our Partners',
            style: typography.headline2,
            textAlign: TextAlign.center,
          ),
          SelectableText(
            'Work with software companies and agencies.',
            style: typography.subtitle1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
