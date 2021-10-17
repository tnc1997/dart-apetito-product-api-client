import 'model.dart';
import 'product_group_market_vertical.dart';
import 'product_group_meal_categorisation.dart';
import 'product_group_ranking.dart';

class ProductGroup extends Model<int> {
  ProductGroup({
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
    required int id,
    DateTime? created,
    String? creator,
    DateTime? updated,
    String? updater,
  }) : super(
          id: id,
          created: created,
          updated: updated,
          updater: updater,
        );

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

  @override
  Map<String, dynamic> toJson() => {
        'longDescription': longDescription,
        'shortDescription': shortDescription,
        'longName': longName,
        'shortName': shortName,
        'productGroupId': productGroupId,
        'quickFindCode': quickFindCode,
        'released': released,
        'rrp': rrp,
        'rrpEur': rrpEur,
        'productGroupMealCategorisation': productGroupMealCategorisation,
        'productGroupMarketVertical': productGroupMarketVertical,
        'productGroupRanking': productGroupRanking,
        ...super.toJson(),
      };

  static ProductGroup fromJson(Map<String, dynamic> json) => ProductGroup(
        longDescription: json['longDescription'],
        shortDescription: json['shortDescription'],
        longName: json['longName'],
        shortName: json['shortName'],
        productGroupId: json['productGroupId'],
        quickFindCode: json['quickFindCode'],
        released: json['released'],
        rrp: (json['rrp'] as num?)?.toDouble(),
        rrpEur: (json['rrpEur'] as num?)?.toDouble(),
        productGroupMealCategorisation:
            (json['productGroupMealCategorisation'] as List<dynamic>?)
                ?.map((e) => ProductGroupMealCategorisation.fromJson(e))
                .toList(),
        productGroupMarketVertical:
            (json['productGroupMarketVertical'] as List<dynamic>?)
                ?.map((e) => ProductGroupMarketVertical.fromJson(e))
                .toList(),
        productGroupRanking: (json['productGroupRanking'] as List<dynamic>?)
            ?.map((e) => ProductGroupRanking.fromJson(e))
            .toList(),
        id: json['id'],
        created:
            json['created'] != null ? DateTime.parse(json['created']) : null,
        creator: json['creator'],
        updated:
            json['updated'] != null ? DateTime.parse(json['updated']) : null,
        updater: json['updater'],
      );
}
