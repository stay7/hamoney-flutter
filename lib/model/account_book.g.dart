// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountBookAdapter extends TypeAdapter<_$_AccountBook> {
  @override
  final int typeId = 1;

  @override
  _$_AccountBook read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_AccountBook(
      id: fields[0] as int,
      name: fields[1] as String,
      categories: (fields[2] as List).cast<Category>(),
      payments: (fields[3] as List).cast<AccountBookPay>(),
      createdAt: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_AccountBook obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.categories)
      ..writeByte(3)
      ..write(obj.payments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountBookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBook _$$_AccountBookFromJson(Map<String, dynamic> json) =>
    _$_AccountBook(
      id: json['id'] as int,
      name: json['name'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>)
          .map((e) => AccountBookPay.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as int,
    );

Map<String, dynamic> _$$_AccountBookToJson(_$_AccountBook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'payments': instance.payments.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt,
    };
