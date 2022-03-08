import 'package:freezed_annotation/freezed_annotation.dart';

part 'facebook_user.freezed.dart';
part 'facebook_user.g.dart';

@freezed
class FacebookUser with _$FacebookUser {
  const factory FacebookUser({
    required int id,
    required String name,
    required String first_name,
    required String last_name,
    required String email,
  }) = _FacebookUser;

  factory FacebookUser.fromJson(Map<String, dynamic> json) =>
      _$FacebookUserFromJson(json);
}
