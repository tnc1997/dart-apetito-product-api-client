// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diet _$DietFromJson(Map<String, dynamic> json) {
  return Diet(
    id: json['id'] as String,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$DietToJson(Diet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
