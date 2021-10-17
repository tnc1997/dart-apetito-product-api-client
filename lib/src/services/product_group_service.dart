import 'dart:convert';

import '../apetito_product_api_client_base.dart';
import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/market_vertical.dart';
import '../models/meal_categorisation.dart';
import '../models/product_group.dart';
import '../models/product_group_market_vertical.dart';
import '../models/product_group_meal_categorisation.dart';
import '../models/product_group_ranking.dart';
import '../models/ranking.dart';

class ProductGroupService {
  ProductGroupService({
    required ApetitoProductApiClientContext context,
  }) : _context = context;

  final ApetitoProductApiClientContext _context;

  /// Gets all the market verticals of the product group that matches an id.
  Future<List<MarketVertical>> getMarketVerticalsByProductGroupId(
      int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/marketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the meal categorisations of the product group that matches an id.
  Future<List<MealCategorisation>> getMealCategorisationsByProductGroupId(
      int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/mealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => MealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets the product group that matches an id.
  Future<ProductGroup> getProductGroupById(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ProductGroup.fromJson(json.decode(response.body));
  }

  /// Gets all the product group market vertical information of the product that matches an id.
  Future<List<ProductGroupMarketVertical>>
      getProductGroupMarketVerticalsByProductGroupId(int id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/productgroups/$id/productgroupmarketverticals'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMarketVertical.fromJson(e))
        .toList();
  }

  /// Gets all the product group meal categorisation information of the product that matches an id.
  Future<List<ProductGroupMealCategorisation>>
      getProductGroupMealCategorisationsByProductGroupId(int id) async {
    final response = await _context.client.get(
      Uri.https(
          authority, '$path/productgroups/$id/productgroupmealcategorisations'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupMealCategorisation.fromJson(e))
        .toList();
  }

  /// Gets all the product group ranking information of the product that matches an id.
  Future<List<ProductGroupRanking>> getProductGroupRankingsByProductGroupId(
      int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/productgrouprankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroupRanking.fromJson(e))
        .toList();
  }

  /// Gets all the product groups.
  Future<List<ProductGroup>> getProductGroups() async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => ProductGroup.fromJson(e))
        .toList();
  }

  /// Gets all the rankings of the product group that matches an id.
  Future<List<Ranking>> getRankingsByProductGroupId(int id) async {
    final response = await _context.client.get(
      Uri.https(authority, '$path/productgroups/$id/rankings'),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => Ranking.fromJson(e))
        .toList();
  }
}
