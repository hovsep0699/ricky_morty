// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterBoxAdapter extends TypeAdapter<CharacterBox> {
  @override
  final int typeId = 5;

  @override
  CharacterBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterBox(
      info: fields[0] as CharacterInfoBox,
      results: (fields[1] as List).cast<CharacterDetailsBox>(),
    );
  }

  @override
  void write(BinaryWriter writer, CharacterBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.info)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharacterInfoBoxAdapter extends TypeAdapter<CharacterInfoBox> {
  @override
  final int typeId = 0;

  @override
  CharacterInfoBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterInfoBox(
      count: fields[0] as int,
      pages: fields[1] as int,
      next: fields[2] as String?,
      prev: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterInfoBox obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.count)
      ..writeByte(1)
      ..write(obj.pages)
      ..writeByte(2)
      ..write(obj.next)
      ..writeByte(3)
      ..write(obj.prev);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterInfoBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
