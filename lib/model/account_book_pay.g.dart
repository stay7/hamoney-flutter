// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book_pay.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountBookPayAdapter extends TypeAdapter<_$_AccountBookPay> {
  @override
  final int typeId = 6;

  @override
  _$_AccountBookPay read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AccountBookPay(
      id: fields[0] as int,
      name: fields[1] as String,
      iconId: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AccountBookPay obj) {
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
      other is AccountBookPayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBookPay _$$_AccountBookPayFromJson(Map<String, dynamic> json) =>
    _$_AccountBookPay(
      id: json['id'] as int,
      name: json['name'] as String,
      iconId: json['iconId'] as int,
    );

Map<String, dynamic> _$$_AccountBookPayToJson(_$_AccountBookPay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'iconId': instance.iconId,
    };
