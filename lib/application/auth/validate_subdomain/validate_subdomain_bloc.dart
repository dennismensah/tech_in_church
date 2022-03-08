import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/auth_failure.dart';
import 'package:tech_in_church/domain/auth/i_auth_repository.dart';

part 'validate_subdomain_event.dart';
part 'validate_subdomain_state.dart';
part 'validate_subdomain_bloc.freezed.dart';

@Injectable()
class ValidateSubdomainBloc
    extends Bloc<ValidateSubdomainEvent, ValidateSubdomainState> {
  final IAuthRepository _authRepository;

  ValidateSubdomainBloc(this._authRepository)
      : super( ValidateSubdomainState.initial());

  @override
  Stream<ValidateSubdomainState> mapEventToState(
    ValidateSubdomainEvent event,
  ) async* {
    yield* event.map(
      subdomainValidated: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final userOption = await _authRepository.validateSubdomain(e.subdomain);
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(userOption),
        );
      },
    );
  }
}
