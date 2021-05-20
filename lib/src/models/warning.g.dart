// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warning _$WarningFromJson(Map<String, dynamic> json) {
  return Warning(
    id: json['id'] as String,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$WarningToJson(Warning instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
