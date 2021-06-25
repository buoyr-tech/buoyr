import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:make_waves/widgets/make_waves_input.dart';

import '../exports.dart';

class MakeWavesRegOne extends StatefulWidget {
  final TextEditingController teamController;
  final TextEditingController memName1Controller;
  final TextEditingController memEmail1Controller;
  final TextEditingController memName2Controller;
  final TextEditingController memEmail2Controller;
  final TextEditingController memName3Controller;
  final TextEditingController memEmail3Controller;
  final TextEditingController memName4Controller;
  final TextEditingController memEmail4Controller;
  const MakeWavesRegOne({
    Key? key,
    required this.teamController,
    required this.memName1Controller,
    required this.memEmail1Controller,
    required this.memName2Controller,
    required this.memEmail2Controller,
    required this.memName3Controller,
    required this.memEmail3Controller,
    required this.memName4Controller,
    required this.memEmail4Controller,
  }) : super(key: key);

  @override
  _MakeWavesRegOneState createState() => _MakeWavesRegOneState();
}

class _MakeWavesRegOneState extends State<MakeWavesRegOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'Mechanics',
          style: theme.subtitle(),
          textAlign: TextAlign.center,
        ),
        SelectableText(
          '1. Create a team of 4 members. It must be composed of ideator/pitcher, developers, and designers. Participants with no coding experience are welcome to join the event.',
          style: theme.body(),
        ),
        MakeWavesInput(
          controller: widget.teamController,
          type: TextInputType.text,
          label: 'Name of team',
        ),
        SizedBox(height: 20.0),
        
        Row(
          children: [
            Expanded(
              child: MakeWavesInput(
                controller: widget.memName1Controller,
                type: TextInputType.text,
                label: 'Name of Participant 1',
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: MakeWavesInput(
                controller: widget.memEmail1Controller,
                type: TextInputType.emailAddress,
                label: 'Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: MakeWavesInput(
                controller: widget.memName2Controller,
                type: TextInputType.text,
                label: 'Name of Participant 2',
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: MakeWavesInput(
                controller: widget.memEmail2Controller,
                type: TextInputType.emailAddress,
                label: 'Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: MakeWavesInput(
                controller: widget.memName3Controller,
                type: TextInputType.text,
                label: 'Name of Participant 3',
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: MakeWavesInput(
                controller: widget.memEmail3Controller,
                type: TextInputType.emailAddress,
                label: 'Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: MakeWavesInput(
                controller: widget.memName4Controller,
                type: TextInputType.text,
                label: 'Name of Participant 4',
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: MakeWavesInput(
                controller: widget.memEmail4Controller,
                type: TextInputType.emailAddress,
                label: 'Email',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
