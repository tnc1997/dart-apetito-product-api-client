import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product.dart';
import 'package:apetito_product_api_client/src/models/warning.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_warning.g.dart';

@JsonSerializable()
class ProductWarning extends Model<String> {
  Product? product;
  Warning? warning;

  ProductWarning({
    required String id,
    this.product,
    this.warning,
  }) : super(
          id: id,
        );

  factory ProductWarning.fromJson(Map<String, dynamic> json) =>
      _$ProductWarningFromJson(json);

  Map<String, dynamic> toJson() => _$ProductWarningToJson(this);
}
