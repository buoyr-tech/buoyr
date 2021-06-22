import 'package:buoyr/screens/desktop/desktop_home_screen.dart';
import 'package:buoyr/screens/mobile/mobile_home_screen.dart';
import 'package:buoyr/screens/tablet/tablet_home_screen.dart';
import 'package:buoyr/ui/rwd.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

final color = CustomTheme().color;
final typography = CustomTheme().typography;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => changeUIBasedOnScreenSize(
        context,
        sizingInformation,
        MobileHomeScreen(),
        TabletHomeScreen(),
        DesktopHomeScreen(),
      ),
    );
  }
}
