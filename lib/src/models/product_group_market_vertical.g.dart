// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group_market_vertical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGroupMarketVertical _$ProductGroupMarketVerticalFromJson(
    Map<String, dynamic> json) {
  return ProductGroupMarketVertical(
    id: json['id'] as String,
    value: json['value'] as String,
    productGroup: json['productGroup'] == null
        ? null
        : ProductGroup.fromJson(json['productGroup'] as Map<String, dynamic>),
    marketVertical: json['marketVertical'] == null
        ? null
        : MarketVertical.fromJson(
            json['marketVertical'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductGroupMarketVerticalToJson(
        ProductGroupMarketVertical instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'productGroup': instance.productGroup,
      'marketVertical': instance.marketVertical,
    };
