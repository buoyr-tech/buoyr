import 'package:flutter/material.dart';

class CustomSection extends StatelessWidget {
  const CustomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Column(
        children: [
          Text(
            'Make Waves.',
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            height: 210.0,
            color: Colors.grey,
          ),
          Text(
            'Join our flagship event, Make Waves. A week-long camp where tech enthusiasts gather to share and collaborate.',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Join Us', style: Theme.of(context).textTheme.button),
          ),
        ],
      ),
    );
  }
}
