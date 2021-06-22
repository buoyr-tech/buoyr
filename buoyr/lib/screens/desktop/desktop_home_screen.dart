import 'package:buoyr/screens/desktop/desktop_app_bar.dart';
import 'package:buoyr/screens/desktop/desktop_aside.dart';
import 'package:buoyr/screens/desktop/desktop_hero.dart';
import 'package:buoyr/screens/desktop/desktop_main.dart';
import 'package:buoyr/screens/desktop/desktop_section.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final color = CustomTheme().color;
final typography = CustomTheme().typography;

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: DesktopAppBar(),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1080,
              child: Column(
                children: [
                  SizedBox(height: 100.0),
                  DesktopHero(),
                  SizedBox(height: 100.0),
                  DesktopMain(),
                  SizedBox(height: 100.0),
                  DesktopAside(),
                  SizedBox(height: 100.0),
                  DesktopSection(),
                  SizedBox(height: 100.0),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: color.secondaryColor,
        child: Icon(Icons.question_answer_outlined),
        onPressed: () {},
      ),
    );
  }
}
