import 'package:buoyr/components/button.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final typography = CustomTheme().typography;

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  // TODO: Build dropwdown for navlinks
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
          width: 280.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('svg/logo.svg', height: 45.0),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_rounded, color: Colors.white,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
