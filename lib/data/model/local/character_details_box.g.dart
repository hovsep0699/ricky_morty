// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_details_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterDetailsBoxAdapter extends TypeAdapter<CharacterDetailsBox> {
  @override
  final int typeId = 4;

  @override
  CharacterDetailsBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterDetailsBox(
      id: fields[0] as int,
      name: fields[1] as String,
      status: fields[2] as String,
      species: fields[3] as String,
      type: fields[4] as String,
      gender: fields[5] as String,
      origin: fields[6] as CharacterOriginBox,
      location: fields[7] as CharacterLocationBox,
      image: fields[8] as String,
      episode: (fields[9] as List).cast<String>(),
      url: fields[10] as String,
      created: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterDetailsBox obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.species)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.origin)
      ..writeByte(7)
      ..write(obj.location)
      ..writeByte(8)
      ..write(obj.image)
      ..writeByte(9)
      ..write(obj.episode)
      ..writeByte(10)
      ..write(obj.url)
      ..writeByte(11)
      ..write(obj.created);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterDetailsBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharacterLocationBoxAdapter extends TypeAdapter<CharacterLocationBox> {
  @override
  final int typeId = 2;

  @override
  CharacterLocationBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterLocationBox(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterLocationBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterLocationBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharacterOriginBoxAdapter extends TypeAdapter<CharacterOriginBox> {
  @override
  final int typeId = 1;

  @override
  CharacterOriginBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterOriginBox(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterOriginBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterOriginBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
