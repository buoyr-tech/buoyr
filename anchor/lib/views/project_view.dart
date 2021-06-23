import 'package:anchor/components/editor.dart';
import 'package:anchor/components/preview.dart';
import 'package:flutter/material.dart';

class ProjectView extends StatefulWidget {
  final String userId;
  final String projectId;
  const ProjectView({
    Key? key,
    required this.userId,
    required this.projectId,
  }) : super(key: key);

  @override
  _ProjectViewState createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  bool isHtml = true;
  bool isDark = true;
  late String userId;
  late String projectId;

  @override
  void initState() {
    super.initState();
    userId = widget.userId;
    projectId = widget.projectId;
  }

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
                userId: userId,
                theme: isDark ? 'dark' : 'light',
                projectId: projectId,
              ),
            ),
            Expanded(child: Preview(userId: userId, projectId: projectId)),
          ],
        ),
      ),
    );
  }
}
