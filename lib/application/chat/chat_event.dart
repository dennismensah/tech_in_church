part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.chatsFetched(int counsellorId) = ChatsFetched;
  
}
