import 'package:apetito_product_api_client/src/models/microwave_stage.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_microwave_stage.g.dart';

@JsonSerializable()
class ProductMicrowaveStage extends Model<String> {
  String? instruction;
  Product? product;
  MicrowaveStage? microwaveStage;

  ProductMicrowaveStage({
    required String id,
    this.instruction,
    this.product,
    this.microwaveStage,
  }) : super(
          id: id,
        );

  factory ProductMicrowaveStage.fromJson(Map<String, dynamic> json) =>
      _$ProductMicrowaveStageFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMicrowaveStageToJson(this);
}
