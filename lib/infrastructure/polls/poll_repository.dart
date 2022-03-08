import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/polls/i_poll_remote_datasource.dart';
import 'package:tech_in_church/domain/polls/i_poll_repository.dart';
import 'package:tech_in_church/domain/polls/poll.dart';
import 'package:tech_in_church/domain/polls/poll_failure.dart';

@LazySingleton(as: IPollRepository)
class PollRepository extends IPollRepository {
  final IPollRemoteDataSource pollRemoteDataSource;
  final INetworkInfo networkInfo;
  PollRepository(
      {required this.pollRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<PollFailure, List<Poll>>> getPolls() async {
    late Either<PollFailure, List<Poll>> result =
        left(const PollFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await pollRemoteDataSource.getPolls();
        switch (response?.statusCode) {
          case 200:
            final pollResponse = (response?.data?['data'] as List)
                .map((e) => Poll.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(pollResponse);
            break;
        }
      } else {
        result = left(const PollFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const PollFailure.serverError(''));
    }
    return result;
  }

  @override
  Future<Either<PollFailure, Unit>> vote(String mask, int pollId, int answerId) async{
    late Either<PollFailure, Unit> result =
    left(const PollFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await pollRemoteDataSource.vote(mask, pollId, answerId);
        switch (response?.statusCode) {
          case 200:
            // final pollResponse = (response?.data?['data'] as List)
            //     .map((e) => Poll.fromJson(e as Map<String, dynamic>))
            //     .toList();
            result = right(unit);
            break;
          case 422:
            print(response?.data['message']);
            result = left(PollFailure.serverError(response?.data['message']?? 'There was an error voting for the poll'));
            break;
        }
      } else {
        result = left(const PollFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const PollFailure.serverError('There was an error voting for the poll'));
    }
    return result;
  }
}
