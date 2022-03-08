import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.fieldEmpty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  final result = validateStringNotEmpty(input);
  if (result.isLeft()) {
    return result;
  } else if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  final result = validateStringNotEmpty(input);
  if (result.isLeft()) {
    return result;
  } else if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateConfirmPassword(
    String password, String confirmPassword) {
  // final presult = validateStringNotEmpty(password);
  final cpresult = validateStringNotEmpty(confirmPassword);
  // if (presult.isLeft()) {
  //   return cpresult;
  // }
  if (cpresult.isLeft()) {
    return cpresult;
  } else if (confirmPassword.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: confirmPassword));
  } else if (password != confirmPassword) {
    return left(
        ValueFailure.nonMatchingPasswords(failedValue: confirmPassword));
  } else {
    return right(confirmPassword);
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  final result = validateStringNotEmpty(input);
  if (result.isLeft()) {
    return result;
  } else if (input.length == 10) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateDate(String input) {
  final result = validateStringNotEmpty(input);
  if (result.isLeft()) {
    return result;
  } else if (DateTime.tryParse(input) != null) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDate(failedValue: input));
  }
}
