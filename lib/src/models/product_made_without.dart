import 'package:apetito_product_api_client/src/models/made_without.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_made_without.g.dart';

@JsonSerializable()
class ProductMadeWithout extends Model<String> {
  Product? product;
  MadeWithout? madeWithout;

  ProductMadeWithout({
    required String id,
    this.product,
    this.madeWithout,
  }) : super(
          id: id,
        );

  factory ProductMadeWithout.fromJson(Map<String, dynamic> json) =>
      _$ProductMadeWithoutFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMadeWithoutToJson(this);
}
