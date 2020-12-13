import 'package:apetito_product_api_client/src/models/meal_type.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_meal_type.g.dart';

@JsonSerializable()
class ProductMealType extends Model<String> {
  Product? product;
  MealType? mealType;

  ProductMealType({
    required String id,
    this.product,
    this.mealType,
  }) : super(
          id: id,
        );

  factory ProductMealType.fromJson(Map<String, dynamic> json) =>
      _$ProductMealTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMealTypeToJson(this);
}
