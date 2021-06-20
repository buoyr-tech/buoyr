import 'package:buoyr/ui/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final typography = CustomTheme().typography;
    final color = CustomTheme().color;
    return GestureDetector(
      onTap: () => print('hello'),
      child: Container(
        width: 130.0,
        height: 30.0,
        color: color.secondaryColor,
        child: Center(
          child: Text(
            text,
            style: typography.headline4.copyWith(fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}
