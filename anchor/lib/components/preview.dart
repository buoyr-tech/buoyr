import 'package:easy_web_view2/easy_web_view2.dart';
import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  final String userId;
  final String projectId;
  const Preview({
    Key? key,
    required this.userId,
    required this.projectId,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final String src = 'https://editor.buoyr.com/$userId/$projectId/preview';
    // final String src = 'http://localhost:3000/$userId/$projectId/preview';
    final ValueKey previewKey = ValueKey('preview');
    return EasyWebView(
      key: previewKey,
      src: src,
      onLoaded: () {},
      isHtml: false,
      isMarkdown: false,
      convertToWidgets: false,
      widgetsTextSelectable: false,
    );
  }
}
