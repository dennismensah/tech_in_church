import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/value_objects.dart';
import 'package:tech_in_church/domain/offering/i_offering_repository.dart';
import 'package:tech_in_church/domain/offering/offering.dart';
import 'package:tech_in_church/domain/offering/offering_failure.dart';

part 'offering_event.dart';
part 'offering_state.dart';
part 'offering_bloc.freezed.dart';

@Injectable()
class OfferingBloc extends Bloc<OfferingEvent, OfferingState> {
  final IOfferingRepository _offeringRepository;
  OfferingBloc(this._offeringRepository) : super(OfferingState.initial());

  @override
  Stream<OfferingState> mapEventToState(
    OfferingEvent event,
  ) async* {
    yield* event.map(
      cardNumberChanged: (e) async* {
        yield state.copyWith(
          cardNumber: RequiredField(e.cardNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      expirationDateChanged: (e) async* {
        yield state.copyWith(
          expirationDate: Date(e.expirationDateStr),
          authFailureOrSuccessOption: none(),
        );
      },
      cvcChanged: (e) async* {
        yield state.copyWith(
          cvc: RequiredField(e.cvcStr),
          authFailureOrSuccessOption: none(),
        );
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          amount: RequiredField(e.amountStr),
          authFailureOrSuccessOption: none(),
        );
      },
      madeOffering: (e) async* {
        final cardNumberValid = state.cardNumber.isValid();
        final expirationDateValid = state.expirationDate.isValid();
        final cvcValid = state.cvc.isValid();
        final amountValid = state.amount.isValid();
        final nameValid = state.name.isValid();
        if (cardNumberValid &&
            expirationDateValid &&
            cvcValid &&
            amountValid &&
            nameValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          final Either<OfferingFailure, String> failureOrSuccess =
              await _offeringRepository
                  .makeOffering(state.amount.getOrElse(''));
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: none(),
          );
        }
      },
      updatedServer: (e) async* {
        
        final amountValid = state.amount.isValid();
        if (amountValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          final Either<OfferingFailure, Unit> failureOrSuccess =
              await _offeringRepository.updateServer(
                  state.amount.getOrElse(''), DateTime.now().toString());
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            updateFailureOrSuccessOption : optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            updateFailureOrSuccessOption: none(),
          );
        }
      },
      nameChanged: (NameChanged e) async* {
        yield state.copyWith(
          name: RequiredField(e.nameStr),
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
