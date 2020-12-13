import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product_group_market_vertical.dart';
import 'package:apetito_product_api_client/src/models/product_group_meal_categorisation.dart';
import 'package:apetito_product_api_client/src/models/product_group_ranking.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_group.g.dart';

@JsonSerializable()
class ProductGroup extends Model<int> {
  String? longDescription;
  String? shortDescription;
  String? longName;
  String? shortName;
  String? productGroupId;
  String? quickFindCode;
  bool? released;
  double? rrp;
  double? rrpEur;
  List<ProductGroupMealCategorisation>? productGroupMealCategorisation;
  List<ProductGroupMarketVertical>? productGroupMarketVertical;
  List<ProductGroupRanking>? productGroupRanking;

  ProductGroup({
    required int id,
    this.longDescription,
    this.shortDescription,
    this.longName,
    this.shortName,
    this.productGroupId,
    this.quickFindCode,
    this.released,
    this.rrp,
    this.rrpEur,
    this.productGroupMealCategorisation,
    this.productGroupMarketVertical,
    this.productGroupRanking,
  }) : super(
          id: id,
        );

  factory ProductGroup.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupFromJson(json);

  @override
  String toString() => longName ?? shortName ?? super.toString();

  Map<String, dynamic> toJson() => _$ProductGroupToJson(this);
}
