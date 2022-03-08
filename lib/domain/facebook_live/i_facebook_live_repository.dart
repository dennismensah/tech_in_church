import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live.dart';
import 'package:tech_in_church/domain/facebook_live/facebook_live_failure.dart';

abstract class IFacebookLiveRepository {
  Future<Either<FacebookLiveFailure, List<FacebookLive>>> getFacebookLiveVideos();
}