import 'package:anchor/views/home_view.dart';
import 'package:anchor/views/project_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Anchor | Beta',
    debugShowCheckedModeBanner: false,
    home: ProjectView(),
  ));
}
