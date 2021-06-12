import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  Widget _buildLinks(context) {
    List<String> links = [
      'Our Team',
      'Teach with Us',
      'Partnership',
    ];
    return Row(
      children: [
        ...links.map((link) {
          return TextButton(
            onPressed: () {},
            child: Text(
              link,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          );
        }).toList()
      ],
    );
  }

  Widget _buildLogos(context) {
    return Row(
      children: [
        ...[1,2,3].map((logo) {
          return FlutterLogo(size: 14.0,);
        }).toList()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: Column(
        children: [
          _buildLinks(context),
          _buildLogos(context),
          Text('Copyright 2021 | Buoyr.')
        ],
      ),
    );
  }
}
