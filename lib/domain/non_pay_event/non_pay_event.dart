import 'package:freezed_annotation/freezed_annotation.dart';

part 'non_pay_event.freezed.dart';
part 'non_pay_event.g.dart';

@freezed
class NonPayEvent with _$NonPayEvent {
  const factory NonPayEvent({
    required int id,
    required String title,
    required String start_time,
    required String mask,
    required String image,
    required String image_filename,
    required String description,
    required String creator,
    required int registered,
    required int type,
    required int amount,
    required String created_at,
  }) = _NonPayEvent;

  factory NonPayEvent.fromJson(Map<String, dynamic> json) =>
      _$NonPayEventFromJson(json);
}
