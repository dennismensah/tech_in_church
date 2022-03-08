import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/polls/poll.dart';
import 'package:tech_in_church/domain/polls/poll_failure.dart';

abstract class IPollRepository {
  Future<Either<PollFailure, List<Poll>>> getPolls();
  Future<Either<PollFailure, Unit>> vote(String mask,int pollId,int answerId);
}