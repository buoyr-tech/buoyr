import 'package:easy_web_view2/easy_web_view2.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final String lang;
  final String userId;
  final String projectId;
  const Editor({
    Key? key,
    required this.lang,
    required this.userId,
    required this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String src =
        'https://editor.buoyr.com/$lang/$userId/$projectId/editor/';
    // final String src = 'http://localhost:3000/$lang/$userId/$projectId/editor';
    final ValueKey editorKey = ValueKey('editor');
    return EasyWebView(
      key: editorKey,
      src: src,
      onLoaded: () {},
      isHtml: false,
      isMarkdown: false,
      convertToWidgets: false,
      widgetsTextSelectable: false,
    );
  }
}
