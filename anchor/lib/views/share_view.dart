import 'package:anchor/components/preview.dart';
import 'package:flutter/material.dart';

class ShareView extends StatelessWidget {
  final String userId;
  final String projectId;
  const ShareView({
    Key? key,
    required this.userId,
    required this.projectId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Preview(userId: userId, projectId: projectId),
    );
  }
}
