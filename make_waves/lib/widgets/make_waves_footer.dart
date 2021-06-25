import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../exports.dart';

class MakeWavesFooter extends StatelessWidget {
  const MakeWavesFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 1000.0,
                  height: 4.0,
                  color: theme.makeWavesColor,
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
            width: 414,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'images/anchor.png',
                  height: 75.0,
                )),
                Expanded(
                    child: Image.asset(
                  'images/buoyr.png',
                  height: 40.0,
                )),
                Expanded(child: SvgPicture.asset('images/make-waves.svg')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
