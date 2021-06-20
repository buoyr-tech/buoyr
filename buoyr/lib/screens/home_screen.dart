import 'package:buoyr/components/button.dart';
import 'package:buoyr/components/section_card.dart';
import 'package:buoyr/data/data.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final color = CustomTheme().color;
final typography = CustomTheme().typography;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: CustomAppBar(),
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
                  CustomHero(),
                  SizedBox(height: 100.0),
                  CustomMain(),
                  SizedBox(height: 100.0),
                  CustomAside(),
                  SizedBox(height: 100.0),
                  CustomSection(),
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

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
                  child: SvgPicture.asset('svg/logo.svg', height: 45.0,),
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

class CustomHero extends StatelessWidget {
  const CustomHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableText(hero['title'], style: typography.headline1),
                SelectableText(hero['subtitle'], style: typography.subtitle1),
                SelectableText(
                  hero['description'],
                  style: typography.bodyText1,
                ),
                CustomButton(text: 'Apply now')
              ],
            ),
          ),
          Expanded(child: Image.asset(hero['image'])),
        ],
      ),
    );
  }
}

class CustomMain extends StatelessWidget {
  const CustomMain({Key? key}) : super(key: key);

  List<Row> buildMainItem() {
    return mainData.map((item) {
      return Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(item['title'], style: typography.headline3),
                SizedBox(height: 10.0),
                SelectableText(item['subtitle'], style: typography.subtitle2),
                SizedBox(height: 10.0),
                SelectableText(item['description'],
                    style: typography.bodyText1),
              ],
            ),
          ),
          Expanded(
            child: Align(
              child: Image.asset(item['image']),
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    return Container(
      height: 1000.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SelectableText('This is how it works.', style: typography.headline2),
          ...buildMainItem(),
        ],
      ),
    );
  }
}

class CustomAside extends StatelessWidget {
  const CustomAside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
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

class CustomSection extends StatelessWidget {
  const CustomSection({Key? key}) : super(key: key);

  List<SectionCard> buildSectionCards() {
    return section.map((item) {
      return SectionCard(
        cardTitle: item['title'],
        cardHighlight: item['subtitle'],
        cardDescription: item['description'],
        cardAction: CustomButton(text: 'Apply now'),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    return Column(
      children: [
        SelectableText('Tuition', style: typography.headline2),
        SelectableText('Your future starts now.', style: typography.subtitle1),
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: buildSectionCards(),
        )
      ],
    );
  }
}
