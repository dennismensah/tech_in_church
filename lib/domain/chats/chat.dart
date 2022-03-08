import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required int id,
    required int first_user_id,
    required int second_user_id,
    required List<ChatMessage> messages,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) =>
      _$ChatFromJson(json);
}
