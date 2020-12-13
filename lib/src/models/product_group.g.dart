// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGroup _$ProductGroupFromJson(Map<String, dynamic> json) {
  return ProductGroup(
    id: json['id'] as int,
    longDescription: json['longDescription'] as String,
    shortDescription: json['shortDescription'] as String,
    longName: json['longName'] as String,
    shortName: json['shortName'] as String,
    productGroupId: json['productGroupId'] as String,
    quickFindCode: json['quickFindCode'] as String,
    released: json['released'] as bool,
    rrp: (json['rrp'] as num?)?.toDouble(),
    rrpEur: (json['rrpEur'] as num?)?.toDouble(),
    productGroupMealCategorisation: (json['productGroupMealCategorisation']
            as List?)
        ?.map((e) =>
            ProductGroupMealCategorisation.fromJson(e as Map<String, dynamic>))
        .toList(),
    productGroupMarketVertical: (json['productGroupMarketVertical'] as List?)
        ?.map((e) =>
            ProductGroupMarketVertical.fromJson(e as Map<String, dynamic>))
        .toList(),
    productGroupRanking: (json['productGroupRanking'] as List?)
        ?.map((e) => ProductGroupRanking.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProductGroupToJson(ProductGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longDescription': instance.longDescription,
      'shortDescription': instance.shortDescription,
      'longName': instance.longName,
      'shortName': instance.shortName,
      'productGroupId': instance.productGroupId,
      'quickFindCode': instance.quickFindCode,
      'released': instance.released,
      'rrp': instance.rrp,
      'rrpEur': instance.rrpEur,
      'productGroupMealCategorisation': instance.productGroupMealCategorisation,
      'productGroupMarketVertical': instance.productGroupMarketVertical,
      'productGroupRanking': instance.productGroupRanking,
    };
