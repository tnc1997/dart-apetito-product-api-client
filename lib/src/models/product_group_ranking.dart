import 'package:apetito_product_api_client/src/models/model.dart';
import 'package:apetito_product_api_client/src/models/product_group.dart';
import 'package:apetito_product_api_client/src/models/ranking.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_group_ranking.g.dart';

@JsonSerializable()
class ProductGroupRanking extends Model<String> {
  int? value;
  ProductGroup? productGroup;
  Ranking? ranking;

  ProductGroupRanking({
    required String id,
    this.value,
    this.productGroup,
    this.ranking,
  }) : super(
          id: id,
        );

  factory ProductGroupRanking.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupRankingFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGroupRankingToJson(this);
}
