import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';

part 'counsellor_chatee.freezed.dart';
part 'counsellor_chatee.g.dart';

@freezed
class CounsellorChatee with _$CounsellorChatee {
  const factory CounsellorChatee({
    required int conversation_id,
    required ChatMessage last_message,
  }) = _CounsellorChatee;

  factory CounsellorChatee.fromJson(Map<String, dynamic> json) =>
      _$CounsellorChateeFromJson(json);
}