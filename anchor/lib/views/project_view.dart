import 'package:anchor/components/editor.dart';
import 'package:anchor/components/preview.dart';
import 'package:flutter/material.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({Key? key}) : super(key: key);

  @override
  _ProjectViewState createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  bool isHtml = true;
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() => isHtml = !isHtml),
            icon: Icon(Icons.change_circle),
          ),
          IconButton(
            onPressed: () => setState(() => isDark = !isDark),
            icon: Icon(Icons.light_mode),
          ),
        ],
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Editor(
                lang: isHtml ? 'html' : 'css',
                userId: '1',
                theme: isDark ? 'dark' : 'light',
                projectId: '1',
              ),
            ),
            Expanded(child: Preview(userId: '1', projectId: '1')),
          ],
        ),
      ),
    );
  }
}
