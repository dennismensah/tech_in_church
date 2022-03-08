// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_verse.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BibleVerseAdapter extends TypeAdapter<BibleVerse> {
  @override
  final int typeId = 3;

  @override
  BibleVerse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BibleVerse(
      text: fields[16] as String,
      verse: fields[17] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BibleVerse obj) {
    writer
      ..writeByte(2)
      ..writeByte(16)
      ..write(obj.text)
      ..writeByte(17)
      ..write(obj.verse);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BibleVerseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BibleVerse _$_$_BibleVerseFromJson(Map<String, dynamic> json) {
  return _$_BibleVerse(
    text: json['text'] as String,
    verse: json['verse'] as int,
  );
}

Map<String, dynamic> _$_$_BibleVerseToJson(_$_BibleVerse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'verse': instance.verse,
    };
