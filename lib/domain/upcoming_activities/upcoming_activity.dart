import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_activity.freezed.dart';
part 'upcoming_activity.g.dart';

@freezed
class UpcomingActivity with _$UpcomingActivity{
  const factory UpcomingActivity({
    required int id,
    required String title,
    required String description,
    required String image,
    required String image_filename,
    required String creator,
    required String mask,
    required String created_at,
    required String start_date,
    required String end_date,
    required String startname,
    required String endname,
  }) = _UpcomingActivity;

  factory UpcomingActivity.fromJson(Map<String, dynamic> json) =>
      _$UpcomingActivityFromJson(json);
}