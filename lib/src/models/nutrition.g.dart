// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return Nutrition(
    id: json['id'] as String,
    name: json['name'] as String?,
    displayOrder: json['displayOrder'] as int?,
    referenceIntake: (json['referenceIntake'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$NutritionToJson(Nutrition instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayOrder': instance.displayOrder,
      'referenceIntake': instance.referenceIntake,
    };
