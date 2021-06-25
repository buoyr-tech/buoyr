


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MakeWavesAppBar extends StatelessWidget {
  const MakeWavesAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      height: 120.0,
      child: Center(child: SvgPicture.asset('images/make-waves.svg', height: 80.0,),),
    );
  }
}