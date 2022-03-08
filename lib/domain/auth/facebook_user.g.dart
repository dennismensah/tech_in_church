// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facebook_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacebookUser _$_$_FacebookUserFromJson(Map<String, dynamic> json) {
  return _$_FacebookUser(
    id: json['id'] as int,
    name: json['name'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$_$_FacebookUserToJson(_$_FacebookUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
    };
