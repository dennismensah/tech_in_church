part of 'chat_actions_bloc.dart';

@freezed
class ChatActionsEvent with _$ChatActionsEvent {
  const factory ChatActionsEvent.messageSent(String message,int receipientId) =
      MessageSent;
}