import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

@Injectable(as: IAuthLocalDatasource)
class AuthLocalDatasource implements IAuthLocalDatasource {
  final HiveInterface db;
  AuthLocalDatasource({required this.db});
  @override
  Future<Option<UserToken>> getUser() async {
    final boxExists = await db.boxExists('usertoken');
    final boxisnotEmpty = db.box<UserToken>('usertoken').isNotEmpty;
    if (boxExists && boxisnotEmpty) {
      return some(db.box<UserToken>('usertoken').values.first);
    }
    return none();
  }

  @override
  Future<void> saveUser(UserToken user) async {
    await db
        .box<UserToken>('usertoken')
        .clear()
        .then((value) async => db.box<UserToken>('usertoken').add(user));
  }
  @override
  Future<void> saveTimezone() async{
    final timzone = await FlutterNativeTimezone.getLocalTimezone();
    await db.box<String>('timezone').add(timzone);
  }

  @override
  String? getTimezone() {
    return db.box<String>('timezone').values.first;
  }
}
