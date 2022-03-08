import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/chats/counsellor.dart';

part 'chat_category.freezed.dart';
part 'chat_category.g.dart';

@freezed
class ChatCategory with _$ChatCategory {
  const factory ChatCategory({
    required int id,
    required String title,
    required String mask,
    required List<Counsellor> counsellors,
  }) = _ChatCategory;

  factory ChatCategory.fromJson(Map<String, dynamic> json) =>
      _$ChatCategoryFromJson(json);
}
