import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/nutrition.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_nutrition.g.dart';

@JsonSerializable()
class ProductNutrition extends Model<String> {
  String? per100G;
  String? perPortion;
  double? percentageOfReferenceIntake;
  Product? product;
  Nutrition? nutrition;

  ProductNutrition({
    required String id,
    this.per100G,
    this.perPortion,
    this.percentageOfReferenceIntake,
    this.product,
    this.nutrition,
  }) : super(
          id: id,
        );

  factory ProductNutrition.fromJson(Map<String, dynamic> json) =>
      _$ProductNutritionFromJson(json);

  Map<String, dynamic> toJson() => _$ProductNutritionToJson(this);
}
