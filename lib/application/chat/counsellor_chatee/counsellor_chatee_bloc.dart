import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/chats/counsellor_chatee.dart';
import 'package:tech_in_church/domain/chats/i_chat_repository.dart';

part 'counsellor_chatee_event.dart';
part 'counsellor_chatee_state.dart';
part 'counsellor_chatee_bloc.freezed.dart';

@Injectable()
class CounsellorChateeBloc
    extends Bloc<CounsellorChateeEvent, CounsellorChateeState> {
      final IChatRepository _chatRepository;
  CounsellorChateeBloc(this._chatRepository) : super(CounsellorChateeState.initial());

  @override
  Stream<CounsellorChateeState> mapEventToState(
    CounsellorChateeEvent event,
  ) async* {
    yield* event.map(
      counsellorChatsFetched: (CounsellorChatsFetched value) async* {
        yield const CounsellorChateeState.loading();
        final option = await _chatRepository.getCounsellorChats();
        yield option.fold(
          (l) => const CounsellorChateeState.notLoaded(),
          (r) => CounsellorChateeState.loadedSuccessfully(r),
        );
      },
    );
  }
}
