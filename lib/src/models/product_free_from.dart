import 'package:apetito_product_api_client/src/models/free_from.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_free_from.g.dart';

@JsonSerializable()
class ProductFreeFrom extends Model<String> {
  Product? product;
  FreeFrom? freeFrom;

  ProductFreeFrom({
    required String id,
    this.product,
    this.freeFrom,
  }) : super(
          id: id,
        );

  factory ProductFreeFrom.fromJson(Map<String, dynamic> json) =>
      _$ProductFreeFromFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFreeFromToJson(this);
}
