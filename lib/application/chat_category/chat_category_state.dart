part of 'chat_category_bloc.dart';

@freezed
class ChatCategoryState with _$ChatCategoryState {
  const factory ChatCategoryState.initial() = Initial;
  const factory ChatCategoryState.loading() = Loading;
  const factory ChatCategoryState.loadedSuccessfully(List<ChatCategory> categories) = LoadedSuccessfully;
  const factory ChatCategoryState.loadedUnSuccessfully(ChatFailure failure) = LoadedUnsuccessfully;
}
