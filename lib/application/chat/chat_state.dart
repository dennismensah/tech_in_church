part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = Initial;
  const factory ChatState.loading() = Loading;
  const factory ChatState.loadedSuccessfully(Chat chat) = LoadedSuccessfully;
  const factory ChatState.notLoaded() = NotLoaded;
}
