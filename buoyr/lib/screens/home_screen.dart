import 'package:buoyr/widgets/custom_app_bar.dart';
import 'package:buoyr/widgets/custom_footer.dart';
import 'package:buoyr/widgets/custom_hero.dart';
import 'package:buoyr/widgets/custom_main.dart';
import 'package:buoyr/widgets/custom_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
              child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 24.0,
          ),
          child: Column(
            children: [
              CustomHero(),
              CustomMain(),
              CustomSection(),
              Divider(color: Theme.of(context).accentColor,thickness: 1.0,),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
