import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/chats/chat.dart';

part 'counsellor.freezed.dart';
part 'counsellor.g.dart';

@freezed
class Counsellor with _$Counsellor {
  const factory Counsellor({
    required int id,
    required String name,
    String? avatar,
    Chat? chat,
    required int conversation_id,
  }) = _Counsellor;

  factory Counsellor.fromJson(Map<String, dynamic> json) =>
      _$CounsellorFromJson(json);
}
