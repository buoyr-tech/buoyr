import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoxDecoration buildAppBarDecoration() {
      return BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            offset: Offset(0, 1.0),
            color: Colors.black26,
          )
        ],
      );
    }

    return Container(
      height: 60.0,
      decoration: buildAppBarDecoration(),
      child: Center(child: FlutterLogo()),
    );
  }
}
