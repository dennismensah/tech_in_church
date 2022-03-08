import 'package:freezed_annotation/freezed_annotation.dart';

part 'counselling_group.freezed.dart';
part 'counselling_group.g.dart';

@freezed
class CounsellingGroups with _$CounsellingGroups{
  const factory CounsellingGroups({
    required int id,
    required String title,
    
  }) = _CounsellingGroups;

  factory CounsellingGroups.fromJson(Map<String, dynamic> json) =>
      _$CounsellingGroupsFromJson(json);
}