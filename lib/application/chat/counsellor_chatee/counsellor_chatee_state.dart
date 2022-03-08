part of 'counsellor_chatee_bloc.dart';

@freezed
class CounsellorChateeState with _$CounsellorChateeState {
  const factory CounsellorChateeState.initial() = Initial;
  const factory CounsellorChateeState.loading() = Loading;
  const factory CounsellorChateeState.loadedSuccessfully(List<CounsellorChatee> chat) = LoadedSuccessfully;
  const factory CounsellorChateeState.notLoaded() = NotLoaded;
}
