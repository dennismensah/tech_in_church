import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/chats/chat.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/counsellor_chatee.dart';
import 'package:tech_in_church/domain/chats/i_chat_repository.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@Injectable()
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  ChatBloc(this._chatRepository) : super(ChatState.initial());

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    yield* event.map(
      chatsFetched: (ChatsFetched value) async* {
        yield const ChatState.loading();
        final option = await _chatRepository.getChats(value.counsellorId);
        yield option.fold(
          (l) => const ChatState.notLoaded(),
          (r) => ChatState.loadedSuccessfully(r),
        );
      },
    );
  }
}
