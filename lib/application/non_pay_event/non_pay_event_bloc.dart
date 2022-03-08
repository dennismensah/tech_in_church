import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/non_pay_event/i_non_pay_event_repository.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event_failure.dart';

part 'non_pay_event_event.dart';
part 'non_pay_event_state.dart';
part 'non_pay_event_bloc.freezed.dart';

@Injectable()
class NonPayEventBloc extends Bloc<NonPayEventEvent, NonPayEventState> {
  final INonPayEventRepository _nonPayEventRepository;
  NonPayEventBloc(this._nonPayEventRepository)
      : super(const NonPayEventState.initial());

  @override
  Stream<NonPayEventState> mapEventToState(
    NonPayEventEvent event,
  ) async* {
    yield* event.map(
      nonPayEventFetched: (e) async* {
        yield const NonPayEventState.loading();
        final galleriesOption = await _nonPayEventRepository.getNonPayEvents();
        yield galleriesOption.fold(
          (l) =>  NonPayEventState.loadedUnSuccessfully(l),
          (r) => NonPayEventState.loadedSuccessfully(r),
        );
      },
    );
  }
}
