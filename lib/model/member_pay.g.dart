// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_pay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MemberPayAdapter extends TypeAdapter<MemberPay> {
  @override
  final int typeId = 5;

  @override
  MemberPay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MemberPay(
      id: fields[0] as int,
      name: fields[1] as String,
      iconId: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MemberPay obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.iconId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MemberPayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemberPay _$$_MemberPayFromJson(Map<String, dynamic> json) => _$_MemberPay(
      id: json['id'] as int,
      name: json['name'] as String,
      iconId: json['iconId'] as int,
    );

Map<String, dynamic> _$$_MemberPayToJson(_$_MemberPay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconId': instance.iconId,
    };
