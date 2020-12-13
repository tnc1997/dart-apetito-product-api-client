// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'microwave_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MicrowaveStage _$MicrowaveStageFromJson(Map<String, dynamic> json) {
  return MicrowaveStage(
    id: json['id'] as String,
    wattage: json['wattage'] as int,
    stage: json['stage'] as int,
  );
}

Map<String, dynamic> _$MicrowaveStageToJson(MicrowaveStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wattage': instance.wattage,
      'stage': instance.stage,
    };
