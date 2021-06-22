import 'package:buoyr/screens/tablet/tablet_app_bar.dart';
import 'package:buoyr/screens/tablet/tablet_aside.dart';
import 'package:buoyr/screens/tablet/tablet_hero.dart';
import 'package:buoyr/screens/tablet/tablet_main.dart';
import 'package:buoyr/screens/tablet/tablet_section.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final color = CustomTheme().color;
final typography = CustomTheme().typography;

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: TabletAppBar(),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 720.0,
              child: Column(
                children: [
                  SizedBox(height: 100.0),
                  TabletHero(),
                  SizedBox(height: 100.0),
                  TabletMain(),
                  SizedBox(height: 100.0),
                  TabletAside(),
                  SizedBox(height: 100.0),
                  TabletSection(),
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
