import 'package:apetito_product_api_client/src/models/market_vertical.dart';
import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_group_market_vertical.g.dart';

@JsonSerializable()
class ProductGroupMarketVertical extends Model<String> {
  String? value;
  ProductGroup? productGroup;
  MarketVertical? marketVertical;

  ProductGroupMarketVertical({
    required String id,
    this.value,
    this.productGroup,
    this.marketVertical,
  }) : super(
          id: id,
        );

  factory ProductGroupMarketVertical.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupMarketVerticalFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGroupMarketVerticalToJson(this);
}
