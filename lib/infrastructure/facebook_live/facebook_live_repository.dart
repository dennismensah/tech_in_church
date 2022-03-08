import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live_failure.dart';
import 'package:tech_in_church/domain/facebook_live/i_facebook_live_remote_datasource.dart';
import 'package:tech_in_church/domain/facebook_live/i_facebook_live_repository.dart';

@LazySingleton(as: IFacebookLiveRepository)
class FacebookLiveRepository extends IFacebookLiveRepository {
  final IFacebookLiveRemoteDataSource facebookLiveRemoteDataSource;
  final INetworkInfo networkInfo;
  FacebookLiveRepository(
      {required this.facebookLiveRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<FacebookLiveFailure, List<FacebookLive>>> getFacebookLiveVideos() async {
    late Either<FacebookLiveFailure, List<FacebookLive>> result =
        left(const FacebookLiveFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await facebookLiveRemoteDataSource.getFacebookLiveVideos();
        switch (response?.statusCode) {
          case 200:
            final upcomingActivityResponse = (response?.data?['data'] as List)
                .map((e) => FacebookLive.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(upcomingActivityResponse);
            break;
        }
      } else {
        result = left(const FacebookLiveFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const FacebookLiveFailure.serverError());
    }
    return result;
  }
}
