// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_microwave_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductMicrowaveStage _$ProductMicrowaveStageFromJson(
    Map<String, dynamic> json) {
  return ProductMicrowaveStage(
    id: json['id'] as String,
    instruction: json['instruction'] as String?,
    product: json['product'] == null
        ? null
        : Product.fromJson(json['product'] as Map<String, dynamic>),
    microwaveStage: json['microwaveStage'] == null
        ? null
        : MicrowaveStage.fromJson(
            json['microwaveStage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductMicrowaveStageToJson(
        ProductMicrowaveStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instruction': instance.instruction,
      'product': instance.product,
      'microwaveStage': instance.microwaveStage,
    };
