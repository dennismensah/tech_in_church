import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/youtube_links/i_youtube_link_remote_datasource.dart';
import 'package:tech_in_church/domain/youtube_links/i_youtube_link_repository.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link.dart';
import 'package:tech_in_church/domain/youtube_links/youtube_link_failure.dart';

@LazySingleton(as: IYoutubeLinkRepository)
class YoutubeLinkRepository extends IYoutubeLinkRepository {
  final IYoutubeLinkRemoteDataSource youtubeLinkRemoteDataSource;
  final INetworkInfo networkInfo;
  YoutubeLinkRepository(
      {required this.youtubeLinkRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<YoutubeLinkFailure, List<YoutubeLink>>> getYoutubeLinks() async {
    late Either<YoutubeLinkFailure, List<YoutubeLink>> result =
        left(const YoutubeLinkFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await youtubeLinkRemoteDataSource.getYoutubeLinks();
        switch (response?.statusCode) {
          case 200:
            final upcomingActivityResponse = (response?.data?['data'] as List)
                .map((e) => YoutubeLink.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(upcomingActivityResponse);
            break;
        }
      } else {
        result = left(const YoutubeLinkFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const YoutubeLinkFailure.serverError());
    }
    return result;
  }
}
