import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const factory User({
   @HiveField(0) required int id,
   @HiveField(1) required String first_name,
   @HiveField(2) required String last_name,
   @HiveField(3) required String gender,
   @HiveField(4) required String email,
   @HiveField(5) required int type,
   @HiveField(6) required String telephone_number,
   @HiveField(7) required String dob,
   @HiveField(8) required String? image,
   @HiveField(9) required String image_filename,
   @HiveField(10) required String mask,
   @HiveField(11) required String fullname,
   @HiveField(12) required String created_at,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
