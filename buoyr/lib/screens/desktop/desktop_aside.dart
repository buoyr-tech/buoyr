import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final typography = CustomTheme().typography;

class DesktopAside extends StatelessWidget {
  const DesktopAside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SelectableText(
            'Our Partners',
            style: typography.headline2,
          ),
          SelectableText(
            'Work with software companies and agencies.',
            style: typography.subtitle1,
          ),
        ],
      ),
    );
  }
}
