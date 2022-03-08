part of 'validate_subdomain_bloc.dart';

@freezed
class ValidateSubdomainEvent with _$ValidateSubdomainEvent {
  const factory ValidateSubdomainEvent.subdomainValidated(String subdomain) = SubdomainValidated;
}