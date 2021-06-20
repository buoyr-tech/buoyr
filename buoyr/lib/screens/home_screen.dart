import 'package:buoyr/components/button.dart';
import 'package:buoyr/components/section_card.dart';
import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = CustomTheme().color;
    return Scaffold(
      backgroundColor: color.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
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

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 1080,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  child: FlutterLogo(size: 65.0),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText('Home', style: typography.link),
                    SelectableText('How It Works', style: typography.link),
                    SelectableText('Our Partners', style: typography.link),
                    SelectableText('Tuition', style: typography.link),
                  ],
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
    final typography = CustomTheme().typography;
    return Container(
      height: 300.0,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectableText(
                  'Land your dream job in 3 months.',
                  style: typography.headline1,
                ),
                SelectableText(
                  'For beginners and with no work experience.',
                  style: typography.subtitle1,
                ),
                SelectableText(
                  'Learn the fundamentals of programming, select a career track of your own, and work with our partner companies!',
                  style: typography.bodyText1,
                ),
                CustomButton(text: 'Apply now')
              ],
            ),
          ),
          Expanded(child: FlutterLogo(size: 300.0)),
        ],
      ),
    );
  }
}

class CustomMain extends StatelessWidget {
  const CustomMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    return Container(
      height: 700.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SelectableText(
            'This is how it works.',
            style: typography.headline2,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('Hello, World!',
                        style: typography.headline3),
                    SelectableText('Week 0 - 4', style: typography.subtitle2),
                    SelectableText(
                        'Learn the fundamentals of programming, basic algorithms, and data structures. This will help you to learn advance lessons when you are ready to select a career track of your own.',
                        style: typography.bodyText1),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                child: FlutterLogo(size: 80.0),
                alignment: Alignment.centerRight,
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('Choose a track',
                        style: typography.headline3),
                    SelectableText('Week 5 - 10', style: typography.subtitle2),
                    SelectableText(
                        'Choose a career track of your own such as frontend web development, ui/ux design, and project management.',
                        style: typography.bodyText1),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                child: FlutterLogo(size: 80.0),
                alignment: Alignment.centerRight,
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('Land your dream job',
                        style: typography.headline3),
                    SelectableText(
                        'As you learn, we will guide you in finding your dream job. We offer mentorship as part of the package. After you graduate, you will have the chance to work with our partner companies.',
                        style: typography.bodyText1),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                child: FlutterLogo(size: 80.0),
                alignment: Alignment.centerRight,
              ))
            ],
          ),
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

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    return Column(
      children: [
        SelectableText(
          'Tuition Options',
          style: typography.headline2,
        ),
        SelectableText(
          'Your future starts now.',
          style: typography.subtitle1,
        ),
        SizedBox(height: 50.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionCard(
              cardTitle: 'All-In Package',
              cardHighlight: 'PHP 20,000',
              cardDescription:
                  'Includes mentorship program, modules, and career placement. ',
              cardAction: CustomButton(text: 'Apply now'),
            ),
            SectionCard(
              cardTitle: 'Scholarship',
              cardHighlight: '15% of your salary',
              cardDescription:
                  'Once hired, pay 15% of your monthly salary for one year.',
              cardAction: CustomButton(text: 'Apply now'),
            ),
          ],
        )
      ],
    );
  }
}
