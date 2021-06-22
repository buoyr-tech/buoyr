import 'package:buoyr/components/button.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final typography = CustomTheme().typography;

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({Key? key}) : super(key: key);

  List<SelectableText> buildLinks() {
    return links.map((link) {
      return SelectableText(link, style: typography.link);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          width: 1080,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  child: SvgPicture.asset(
                    'svg/logo.svg',
                    height: 45.0,
                  ),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [...buildLinks(), CustomButton(text: 'Apply now')],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
