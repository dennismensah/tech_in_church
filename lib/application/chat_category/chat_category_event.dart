part of 'chat_category_bloc.dart';

@freezed
class ChatCategoryEvent with _$ChatCategoryEvent {
  const factory ChatCategoryEvent.chatCategoriesFetched() =
      ChatCategoriesFetched;
}