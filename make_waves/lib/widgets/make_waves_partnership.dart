import 'package:flutter/material.dart';
import 'package:make_waves/widgets/make_waves_spacer.dart';
import '../exports.dart';

class MakeWavesPartnership extends StatelessWidget {
  const MakeWavesPartnership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'Co-organized By',
          style: theme.subtitle(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0,
          child: Column(
            children: [
              Image.asset('images/buoyr.png', height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/ideya.png', height: 75.0),
                  Image.asset('images/iit.png', height: 75.0),
                ],
              )
            ],
          ),
        ),
        MakeWavesSpacer(),
        SelectableText(
          'Media Partners',
          style: theme.subtitle(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        Container(
          width: 300.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/dsc.png', height: 75.0),
                  Image.asset('images/tau.png', height: 75.0),
                  Image.asset('images/seles.png', height: 75.0),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/minda.png', height: 75.0),
                  Image.asset('images/merch.png', height: 75.0),
                ],
              ),
            ],
          ),
        ),
        MakeWavesSpacer(),
        SelectableText(
          'Partner Companies',
          style: theme.subtitle(),
          textAlign: TextAlign.center,
        ),
        // SizedBox(height: 5.0),
        Container(
          width: 350.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/atmos.png', height: 100.0),
              Image.asset('images/soaring.png', height: 75.0),
              Image.asset('images/secret.png', height: 45.0),
            ],
          ),
        ),
        MakeWavesSpacer(),
        SelectableText(
          'Special Thanks',
          style: theme.subtitle(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        Container(
          width: 300.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/invision.png', height: 75.0),
                  Image.asset('images/skillshare.png', height: 75.0),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/deped.png', height: 75.0),
                  Image.asset('images/eskwelabs.png', height: 75.0),
                  Image.asset('images/quiddity.png', height: 75.0),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/balsamiq.png', height: 50.0),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
