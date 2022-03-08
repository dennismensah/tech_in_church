import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/polls/poll_options.dart';

part 'poll_result.freezed.dart';
part 'poll_result.g.dart';

@freezed
class PollResult with _$PollResult {
  const factory PollResult({
    required int id,
    required String answer,
    required int total,
    required bool voted,
  }) = _PollResult;

  factory PollResult.fromJson(Map<String, dynamic> json) => _$PollResultFromJson(json);
}