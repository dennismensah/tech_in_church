// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible_chapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BibleChapterAdapter extends TypeAdapter<BibleChapter> {
  @override
  final int typeId = 2;

  @override
  BibleChapter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BibleChapter(
      verses: (fields[15] as List).cast<BibleVerse>(),
    );
  }

  @override
  void write(BinaryWriter writer, BibleChapter obj) {
    writer
      ..writeByte(1)
      ..writeByte(15)
      ..write(obj.verses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BibleChapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BibleChapter _$_$_BibleChapterFromJson(Map<String, dynamic> json) {
  return _$_BibleChapter(
    verses: (json['verses'] as List<dynamic>)
        .map((e) => BibleVerse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BibleChapterToJson(_$_BibleChapter instance) =>
    <String, dynamic>{
      'verses': instance.verses,
    };
