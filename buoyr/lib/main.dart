import 'package:buoyr/configure_theme.dart';
import 'package:buoyr/screens/home_screen.dart';
import 'package:flutter/material.dart';
import './configure_web.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  configureApp();
  runApp(App());
}

const String _title = 'Buoyr Technologies';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: configureTheme(),
      home: HomeScreen(),
    );
  }
}
