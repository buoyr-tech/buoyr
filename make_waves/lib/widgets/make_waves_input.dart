import 'package:flutter/material.dart';

import '../exports.dart';

class MakeWavesInput extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String label;
  const MakeWavesInput({
    Key? key,
    required this.controller,
    required this.type,
    required this.label,
  }) : super(key: key);

  @override
  _MakeWavesInputState createState() => _MakeWavesInputState();
}

class _MakeWavesInputState extends State<MakeWavesInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.type,
      cursorColor: theme.anchorColor,
      maxLines: widget.type == TextInputType.multiline ? 10 : 1,
      decoration: InputDecoration(
        hasFloatingPlaceholder: false,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.buoyrColor, width: 2.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.buoyrColor, width: 2.0)),
        border: OutlineInputBorder(),
        labelText: widget.label,
        alignLabelWithHint: true,
        labelStyle: theme.caption(),
      ),
    );
  }
}
