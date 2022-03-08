import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link_failure.dart';

abstract class IYoutubeLinkRepository {
  Future<Either<YoutubeLinkFailure, List<YoutubeLink>>> getYoutubeLinks();
}