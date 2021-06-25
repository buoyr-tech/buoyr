import 'package:flutter/material.dart';
import 'package:make_waves/widgets/make_waves_spacer.dart';

import '../exports.dart';

class MakeWavesRegThree extends StatelessWidget {
  final Function registerAction;
  const MakeWavesRegThree({Key? key, required this.registerAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          '3. Once registered, please wait for the confirmation email that will be sent to you. If you haven’t  received your confirmation yet, please message make-waves@buoyr.com.',
          style: theme.body(),
        ),
        MakeWavesSpacer(),
        InkWell(
          onTap: () async {
            await registerAction();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              width: 165.0,
              height: 45.0,
              color: theme.buoyrColor,
              child: Center(
                child: Text(
                  'Register',
                  style: theme.caption().copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
