// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as int,
      first_name: fields[1] as String,
      last_name: fields[2] as String,
      gender: fields[3] as String,
      email: fields[4] as String,
      type: fields[5] as int,
      telephone_number: fields[6] as String,
      dob: fields[7] as String,
      image: fields[8] as String?,
      image_filename: fields[9] as String,
      mask: fields[10] as String,
      fullname: fields[11] as String,
      created_at: fields[12] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.first_name)
      ..writeByte(2)
      ..write(obj.last_name)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.telephone_number)
      ..writeByte(7)
      ..write(obj.dob)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.image_filename)
      ..writeByte(10)
      ..write(obj.mask)
      ..writeByte(11)
      ..write(obj.fullname)
      ..writeByte(12)
      ..write(obj.created_at);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    gender: json['gender'] as String,
    email: json['email'] as String,
    type: json['type'] as int,
    telephone_number: json['telephone_number'] as String,
    dob: json['dob'] as String,
    image: json['image'] as String?,
    image_filename: json['image_filename'] as String,
    mask: json['mask'] as String,
    fullname: json['fullname'] as String,
    created_at: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'gender': instance.gender,
      'email': instance.email,
      'type': instance.type,
      'telephone_number': instance.telephone_number,
      'dob': instance.dob,
      'image': instance.image,
      'image_filename': instance.image_filename,
      'mask': instance.mask,
      'fullname': instance.fullname,
      'created_at': instance.created_at,
    };
