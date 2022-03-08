import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_options.freezed.dart';
part 'poll_options.g.dart';

@freezed
class PollOptions with _$PollOptions {
  const factory PollOptions({
    required int id,
    required String answer,
  }) = _PollOptions;

  factory PollOptions.fromJson(Map<String, dynamic> json) => _$PollOptionsFromJson(json);
}