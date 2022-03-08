import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/core/failures.dart';
import 'package:tech_in_church/domain/core/value_objects.dart';
import 'package:tech_in_church/domain/core/value_validators.dart';

class RequiredField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RequiredField(String input) {
    return RequiredField._(
      validateStringNotEmpty(input),
    );
  }

  const RequiredField._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ConfirmPassword(String password, String confirmPassword) {
    return ConfirmPassword._(
      validateConfirmPassword(password, confirmPassword),
    );
  }

  const ConfirmPassword._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validatePhoneNumber(input),
    );
  }

  const PhoneNumber._(this.value);
}

class Date extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Date(String input) {
    return Date._(
      validateDate(input),
    );
  }

  const Date._(this.value);
}
