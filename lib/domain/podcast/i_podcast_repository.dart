import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/domain/podcast/podcast_failure.dart';

abstract class IPodcastRepository {
  Future<Either<PodcastFailure, List<Podcast>>> getPodcasts();
  Future<Either<PodcastFailure, Unit>> bookmarkPodcast(int podcastId);
  Future<Either<PodcastFailure, Unit>> downloadAudio(String audioUrl,String audioFileName);
}