import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/i_chat_repository.dart';

part 'chat_actions_event.dart';
part 'chat_actions_state.dart';
part 'chat_actions_bloc.freezed.dart';

@Injectable()
class ChatActionsBloc extends Bloc<ChatActionsEvent, ChatActionsState> {
  final IChatRepository _chatRepository;
  ChatActionsBloc(this._chatRepository) : super(ChatActionsState.initial());

  @override
  Stream<ChatActionsState> mapEventToState(
    ChatActionsEvent event,
  ) async* {
    yield* event.map(
      messageSent: (MessageSent value) async* {
        yield const ChatActionsState.loading();
        final option = await _chatRepository.sendMessage(
            value.message, value.receipientId);
        yield option.fold(
          (l) => const ChatActionsState.messageNotSent(),
          (r) => ChatActionsState.messageSentSuccessfully(r),
        );
      },
    );
  }
}
