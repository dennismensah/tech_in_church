import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/domain/auth/user.dart';

part 'user_token.freezed.dart';
part 'user_token.g.dart';

@freezed
@HiveType(typeId: 1)
class UserToken with _$UserToken {
  const factory UserToken({
   @HiveField(13) required User user,
   @HiveField(14) required String token,
   @HiveField(15) required int counsellor,
  }) = _UserToken;

  factory UserToken.fromJson(Map<String, dynamic> json) => _$UserTokenFromJson(json);
}
