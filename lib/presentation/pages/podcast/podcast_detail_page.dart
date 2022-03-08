import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/presentation/pages/podcast/widgets/podcast_detail_view.dart';

class PodcastDetailPage extends StatelessWidget {
  final Podcast podcast;
  const PodcastDetailPage({Key? key, required this.podcast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcast'),
      ),
      body: PodcastDetailView(),
    );
  }
}
