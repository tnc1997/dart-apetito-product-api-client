import 'package:apetito_product_api_client/src/models/diet.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_diet.g.dart';

@JsonSerializable()
class ProductDiet extends Model<String> {
  Product? product;
  Diet? diet;

  ProductDiet({
    required String id,
    this.product,
    this.diet,
  }) : super(
          id: id,
        );

  factory ProductDiet.fromJson(Map<String, dynamic> json) =>
      _$ProductDietFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDietToJson(this);
}
