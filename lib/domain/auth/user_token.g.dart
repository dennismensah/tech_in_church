// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_token.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserTokenAdapter extends TypeAdapter<UserToken> {
  @override
  final int typeId = 1;

  @override
  UserToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserToken(
      user: fields[13] as User,
      token: fields[14] as String,
      counsellor: fields[15] as int,
    );
  }

  @override
  void write(BinaryWriter writer, UserToken obj) {
    writer
      ..writeByte(3)
      ..writeByte(13)
      ..write(obj.user)
      ..writeByte(14)
      ..write(obj.token)
      ..writeByte(15)
      ..write(obj.counsellor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserToken _$_$_UserTokenFromJson(Map<String, dynamic> json) {
  return _$_UserToken(
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    token: json['token'] as String,
    counsellor: json['counsellor'] as int,
  );
}

Map<String, dynamic> _$_$_UserTokenToJson(_$_UserToken instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'counsellor': instance.counsellor,
    };
