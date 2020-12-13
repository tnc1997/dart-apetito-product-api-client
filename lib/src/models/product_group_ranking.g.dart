// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group_ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGroupRanking _$ProductGroupRankingFromJson(Map<String, dynamic> json) {
  return ProductGroupRanking(
    id: json['id'] as String,
    value: json['value'] as int,
    productGroup: json['productGroup'] == null
        ? null
        : ProductGroup.fromJson(json['productGroup'] as Map<String, dynamic>),
    ranking: json['ranking'] == null
        ? null
        : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductGroupRankingToJson(
        ProductGroupRanking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'productGroup': instance.productGroup,
      'ranking': instance.ranking,
    };
