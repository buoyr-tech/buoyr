import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget changeUIBasedOnScreenSize(
  context,
  sizingInformation,
  Widget mobile,
  Widget tablet,
  Widget desktop,
) {
  return ScreenTypeLayout(
    breakpoints: ScreenBreakpoints(
      tablet: 720.0,
      desktop: 1080.0,
      watch: 180.0,
    ),
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
  );
}
