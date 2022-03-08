import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';

abstract class IAuthLocalDatasource {
  Future<void> saveUser(UserToken user);
  Future<Option<UserToken>> getUser();
  Future<void> saveTimezone();
  String? getTimezone();
}
