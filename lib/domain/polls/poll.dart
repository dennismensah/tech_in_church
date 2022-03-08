import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/polls/poll_options.dart';
import 'package:tech_in_church/domain/polls/poll_result.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

@freezed
class Poll with _$Poll {
  const factory Poll({
    required int id,
    required String title,
    required String question,
    required String end_time,
    required String startname,
    required String creator,
    // required List<Map>  mobileoptions,
    required List<PollResult> results,
    required String mask,
    required String created_at,
    required int voted,
  }) = _Poll;

  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}
