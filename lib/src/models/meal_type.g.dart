// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealType _$MealTypeFromJson(Map<String, dynamic> json) {
  return MealType(
    id: json['id'] as String,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$MealTypeToJson(MealType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
