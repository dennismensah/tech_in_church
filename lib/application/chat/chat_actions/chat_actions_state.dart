part of 'chat_actions_bloc.dart';

@freezed
class ChatActionsState with _$ChatActionsState {
  const factory ChatActionsState.initial() = Initial;
  const factory ChatActionsState.loading() = Loading;
  const factory ChatActionsState.messageSentSuccessfully(List<ChatMessage> messages) = MessageSentSuccessfully;
  const factory ChatActionsState.messageNotSent() = MessageNotSent;
}
