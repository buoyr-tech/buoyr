import 'package:flutter/material.dart';
import 'package:make_waves/ui/make_waves_theme.dart';
import 'package:make_waves/widgets/make_waves_input.dart';

class MakeWavesRegTwo extends StatefulWidget {
  final Function changeSector;
  final TextEditingController solutionController;
  const MakeWavesRegTwo(
      {Key? key, required this.changeSector, required this.solutionController})
      : super(key: key);

  @override
  _MakeWavesRegTwoState createState() => _MakeWavesRegTwoState();
}

class _MakeWavesRegTwoState extends State<MakeWavesRegTwo> {
  dynamic _sector = 'Agriculture';

  @override
  void initState() {
    // _sector = widget.sector;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          '2. In this year’s Make Waves, we have three sectors to feature in our challenges. Ideas must solve problems/issues in Mindanao. Select one and add a short overview of your ideas. You can change it during the event.',
          style: theme.body(),
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: DropdownButton(
                  value: _sector,
                  underline: Container(
                    height: 2.0,
                    color: theme.buoyrColor,
                  ),
                  style: theme.caption(),
                  onChanged: (value) {
                    widget.changeSector(value);
                    setState(() {
                      _sector = value;
                    });
                  },
                  items: ['Agriculture', 'Education', 'Health', 'Open Idea']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList()),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
                child: MakeWavesInput(
                    controller: widget.solutionController,
                    type: TextInputType.multiline,
                    label: 'Short Overview'))
          ],
        ),
      ],
    );
  }
}
