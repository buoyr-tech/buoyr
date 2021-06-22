import 'package:buoyr/screens/mobile/mobile_app_bar.dart';
import 'package:buoyr/screens/mobile/mobile_aside.dart';
import 'package:buoyr/screens/mobile/mobile_hero.dart';
import 'package:buoyr/screens/mobile/mobile_main.dart';
import 'package:buoyr/screens/mobile/mobile_section.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

final color = CustomTheme().color;
final typography = CustomTheme().typography;

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: MobileAppBar(),
      ),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280.0,
              child: Column(
                children: [
                  SizedBox(height: 50.0),
                  MobileHero(),
                  SizedBox(height: 50.0),
                  MobileMain(),
                  SizedBox(height: 50.0),
                  MobileAside(),
                  SizedBox(height: 50.0),
                  MobileSection(),
                  SizedBox(height: 50.0),
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
