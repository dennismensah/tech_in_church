import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/chats/chat_category.dart';
import 'package:tech_in_church/domain/chats/chat_failure.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/i_chat_repository.dart';

part 'chat_category_event.dart';
part 'chat_category_state.dart';
part 'chat_category_bloc.freezed.dart';

@Injectable()
class ChatCategoryBloc extends Bloc<ChatCategoryEvent, ChatCategoryState> {
  final IChatRepository _chatRepository;
  ChatCategoryBloc(this._chatRepository) : super(const ChatCategoryState.initial());

  @override
  Stream<ChatCategoryState> mapEventToState(
    ChatCategoryEvent event,
  ) async* {
    yield* event.map(
      chatCategoriesFetched: (e) async* {
        yield const ChatCategoryState.loading();
        final galleriesOption = await _chatRepository.getChatCategories();
        yield galleriesOption.fold(
          (l) =>  ChatCategoryState.loadedUnSuccessfully(l),
          (r) => ChatCategoryState.loadedSuccessfully(r),
        );
      },
      
    );
  }
}
