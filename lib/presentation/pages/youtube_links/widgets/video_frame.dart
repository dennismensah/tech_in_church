import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoFrame extends HookWidget {
  final String url;
  const VideoFrame({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url) ?? '',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        // mute: true,
      ),
    );
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
        controlsTimeOut: const Duration(seconds: 7),
        showVideoProgressIndicator: true,
      ),
      builder: (BuildContext, player) {
        return player;
      },
    );
  }
}
