import 'package:flutter/material.dart';
import '../exports.dart';
import 'package:video_player/video_player.dart';

class MakeWavesHero extends StatefulWidget {
  const MakeWavesHero({Key? key}) : super(key: key);

  @override
  _MakeWavesHeroState createState() => _MakeWavesHeroState();
}

class _MakeWavesHeroState extends State<MakeWavesHero> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('media/make-waves-2021-official.mp4')
          ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return Column(
      children: [
        SelectableText(
          'Making an impact through code and design.',
          style: theme.title(),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25.0),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: VideoPlayer(_controller),
        ),
        SizedBox(height: 25.0),
        SelectableText(
          'We believe that in order for us to learn, we should engage ourselves in the tech community.',
          style: theme.body(),
        ),
        SizedBox(height: 25.0),
        SelectableText(
          'This is what Make Waves is all about. It is a one-week camp where participants can learn, engage, and join in hackathons to solve challenges.',
          style: theme.body(),
        ),
        SizedBox(height: 25.0),
        SelectableText(
          'There will be prizes where the winners can win up to 30,000 pesos - a mentorship opportunity to one of our partners, a scholarship to our Buoyr School, and other perks.',
          style: theme.body(),
        ),
      ],
    );
  }
}
