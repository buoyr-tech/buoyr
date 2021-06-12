import 'package:flutter/material.dart';

class Card {
  final String title;
  final String subtitle;

  Card({required this.title, required this.subtitle});
}

List<Card> cards = [
  Card(
    title: 'Ahoy, CS!',
    subtitle: 'Learn the fundamentals of programming and computer science.',
  ),
  Card(
    title: 'Captain Developer!',
    subtitle:
        'Learn Flutter to develop cross-application platforms for mobile and web.',
  ),
  Card(
    title: 'Designer’s Treasure!',
    subtitle: 'Learn the fundamentals of UI/UX design and project management.',
  ),
];

class CustomMain extends StatelessWidget {
  const CustomMain({Key? key}) : super(key: key);

  Widget _buildCard(context, Card card) {
    return Container(
      height: 310.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            card.title,
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            card.subtitle,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  Widget _buildCards(context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: cards.map((card) => _buildCard(context, card)).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1125.0,
      // color: Colors.red,
      child: Column(
        children: [
          Text('We Buoyr.', style: Theme.of(context).textTheme.headline2),
          Text(
            'Buoyr Technologies is an EduTech startup team that innovates full-stack software engineering boot camps, hackathons, and workshops.',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          _buildCards(context),
        ],
      ),
    );
  }
}
