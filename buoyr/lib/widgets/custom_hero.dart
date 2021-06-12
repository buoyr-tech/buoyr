import 'package:flutter/material.dart';

class CustomHero extends StatelessWidget {
  const CustomHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 475.0,
      // color: Colors.red,
      child: Column(
        children: [
          SelectableText(
            'Revolutionize learning.',
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(height: 210.0, color: Colors.grey),
          Text(
            'Learn as you code. Share and collaborate. And build your own portfolio.  Anchor, our learning platform.',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Learn more',
              style: Theme.of(context).textTheme.button,
            ),
          )
        ],
      ),
    );
  }
}
