import 'package:freezed_annotation/freezed_annotation.dart';

part 'church_today.freezed.dart';
part 'church_today.g.dart';

@freezed
class ChurchToday with _$ChurchToday {
  const factory ChurchToday({
    required int id,
    required String title,
    required String details,
    required String day,
    required String dayname,
    required String creator,
    required String mask,
    required String created_at,
  }) = _ChurchToday;

  factory ChurchToday.fromJson(Map<String, dynamic> json) =>
      _$ChurchTodayFromJson(json);
}
