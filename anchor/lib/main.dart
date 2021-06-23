import 'dart:js';

import 'package:anchor/views/home_view.dart';
import 'package:anchor/views/not_found_view.dart';
import 'package:anchor/views/project_view.dart';
import 'package:anchor/views/share_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Anchor | Beta',
    debugShowCheckedModeBanner: false,
    onGenerateRoute: (settings) {
      // /
      if (settings.name == '/') {
        return MaterialPageRoute(builder: (context) => HomeView());
      }

      final uri = Uri.parse(settings.name!);

      if (uri.pathSegments.length == 3) {
        return MaterialPageRoute(builder: (context) {
          // /:userId/:projectId/project
          if (uri.pathSegments.last == 'project') {
            return ProjectView(
              userId: uri.pathSegments[0],
              projectId: uri.pathSegments[1],
            );
            // /:userId/:projectId/share
          } else if (uri.pathSegments.last == 'share') {
            return ShareView(
              userId: uri.pathSegments[0],
              projectId: uri.pathSegments[1],
            );
          } else {
            return NotFoundView();
          }
        });
      }
      return MaterialPageRoute(builder: (context) => NotFoundView());
    },
  ));
}
