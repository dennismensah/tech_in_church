import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/podcast/i_podcast_remote_datasource.dart';
import 'package:tech_in_church/domain/podcast/i_podcast_repository.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/domain/podcast/podcast_failure.dart';

@LazySingleton(as: IPodcastRepository)
class PodcastRepository extends IPodcastRepository {
  final IPodcastRemoteDataSource podcastRemoteDataSource;
  final INetworkInfo networkInfo;
  PodcastRepository(
      {required this.podcastRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<PodcastFailure, List<Podcast>>> getPodcasts() async {
    late Either<PodcastFailure, List<Podcast>> result =
        left(const PodcastFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await podcastRemoteDataSource.getPodcasts();
        switch (response?.statusCode) {
          case 200:
            final podcastResponse = (response?.data?['data'] as List)
                .map((e) => Podcast.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(podcastResponse);
            break;
        }
      } else {
        result = left(const PodcastFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const PodcastFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<PodcastFailure, Unit>> downloadAudio(
      String audioUrl, String audioFileName) async {
    late Either<PodcastFailure, Unit> result =
        left(const PodcastFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await podcastRemoteDataSource.downloadAudio(
            audioUrl, audioFileName);
        switch (response?.statusCode) {
          case 200:
            result = right(unit);
            break;
        }
      } else {
        result = left(const PodcastFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const PodcastFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<PodcastFailure, Unit>> bookmarkPodcast(int podcastId) async{
    late Either<PodcastFailure, Unit> result =
        left(const PodcastFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await podcastRemoteDataSource.bookmarkPodcast(podcastId);
        switch (response?.statusCode) {
          case 200:
            result = right(unit);
            break;
        }
      } else {
        result = left(const PodcastFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const PodcastFailure.serverError());
    }
    return result;
  }
}
